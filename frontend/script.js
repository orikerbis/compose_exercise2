
const apiUrl = 'http://localhost:3000/products';
async function fetchProducts() {
    try { 
        const response = await fetch(apiUrl);
        if (!response.ok) throw new Error(`Failed to fetch data: ${response.statusText}`);

        const products = await response.json();
        const tableBody = document.getElementById('user-table-body'); // Ensure the element exists in your HTML

        tableBody.innerHTML = '';

        products.forEach(product => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${product.name}</td>
                <td>${product.category}</td>
                <td>${product.price}</td>
                <td>${product.stock}</td>
            `;
            tableBody.appendChild(row);
        });
    } catch (error) {
        console.error('Error fetching products:', error);
    }
}

fetchProducts();