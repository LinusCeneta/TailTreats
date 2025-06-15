let iconcart = document.getElementById('popup');
let body = document.querySelector('body');
let close = document.querySelector('.hide');
iconcart.addEventListener('click', () => {
    body.classList.toggle('showCart');

});

close.addEventListener('click', () => {
    body.classList.toggle('showCart');

});


const products = {
    'Pet Foods': [
        {id: 0, image: 'img/p1.png', title: 'Pet Food 1', price: '₱250'},
        {id: 1, image: 'img/p2.png', title: 'Pet Food 2', price: '₱350'},
        {id: 2, image: 'img/p3.png', title: 'Pet Food 3', price: '₱450'},
        {id: 3, image: 'img/p4.png', title: 'Pet Food 4', price: '₱550'},
        {id: 4, image: 'img/p5.png', title: 'Pet Food 5', price: '₱650'},
        {id: 5, image: 'img/p6.png', title: 'Pet Food 6', price: '₱750'}
    ],
    'Pet Treats': [
        {id: 6, image: 'img/treat1.jpg', title: 'Pet Treat 1', price: '₱250'},
        {id: 7, image: 'img/treat2.jpg', title: 'Pet Treat 2', price: '₱350'},
        {id: 8, image: 'img/treat3.jpg', title: 'Pet Treat 3', price: '₱450'},
        {id: 9, image: 'img/treat4.jpg', title: 'Pet Treat 4 ', price: '₱550'},
        {id: 10, image: 'img/treat1.jpg', title: 'Pet Treat 5', price: '₱650'},
        {id: 11, image: 'img/treat2.jpg', title: 'Pet Treat 6', price: '₱750'}
    ],
    'Grooming Supplies': [
        {id: 12, image: 'img/groom1.jpg', title: 'Brush', price: '₱250'},
        {id: 13, image: 'img/groom2.jpg', title: 'Scissors', price: '₱350'},
        {id: 14, image: 'img/groom3.jpg', title: 'Shampoo', price: '₱450'},
        {id: 15, image: 'img/groom4.jpg', title: 'Nail Cutter', price: '₱550'},
        {id: 16, image: 'img/treat1.jpg', title: 'Grooming 5', price: '₱650'},
        {id: 17, image: 'img/treat2.jpg', title: 'Grooming 6', price: '₱750'}
    ],
    'Health and Wellness': [
        {id: 18, image: 'img/p1.png', title: 'Health 1', price: '₱250'},
        {id: 19, image: 'img/p2.png', title: 'Health 2', price: '₱350'},
        {id: 20, image: 'img/p3.png', title: 'Health 3', price: '₱450'},
        {id: 21, image: 'img/p4.png', title: 'Health 4', price: '₱550'},
        {id: 22, image: 'img/p5.png', title: 'Health 5', price: '₱650'},
        {id: 23, image: 'img/p6.png', title: 'Health 6', price: '₱750'}
    ],
    'Pet Supplies': [
        {id: 24, image: 'img/p1.png', title: 'Supply 1', price: '₱250'},
        {id: 25, image: 'img/p2.png', title: 'Supply 2', price: '₱350'},
        {id: 26, image: 'img/p3.png', title: 'Supply 3', price: '₱450'},
        {id: 27, image: 'img/p4.png', title: 'Supply 4', price: '₱550'},
        {id: 28, image: 'img/p5.png', title: 'Supply 5', price: '₱650'},
        {id: 29, image: 'img/p6.png', title: 'Supply 6', price: '₱750'}
    ]
};

//Product info
function generateProductHTML(product) {
    return`
    <section class="categories">
        <div class="products-container" style="width: 350px; padding-left:200px; padding-right:200px;">
                    <div class="box" style="background-color: white;">
                        <img src="${product.image}" alt="${product.title}">
                        <span>Item on Sale</span>
                        <h2>${product.title}</h2>
                        <h3 class="price">${product.price}</h3>
                        <button data-product-id=${product.id}><i class='bx bxs-cart-alt'></i></button>
                        <i class='bx bx-heart' ></i>
                        <span class="discount">-10%</span>
                    </div>

        </div>
    </section>
    `;
}

document.addEventListener('DOMContentLoaded', function () {
    const productContainer = document.getElementById('productContainer');
    for (const [categoryName, categoryProducts] of Object.entries(products)) {
        const categoryHTML = `
      <div>
                <h1 style="color: white; text-align:center; margin-top: 100px;">${categoryName}</h1>
        <div class="row">
          ${categoryProducts.map(generateProductHTML).join('')}
        </div>
      </div>
    `;
        productContainer.innerHTML += categoryHTML;
    }

    // Use event delegation to handle add-to-cart button clicks
    productContainer.addEventListener('click', function (event) {
        if (event.target.classList.contains('bxs-cart-alt')) {
            const productId = parseInt(event.target.getAttribute('data-product-id'), 10);
            const categoryProducts = Object.values(products).flat();
            const product = categoryProducts.find(p => p.id === productId);
            addToCart(product);
        }
    });

// Load cart items from localStorage
    loadCartFromLocalStorage();
    renderCart();
});



