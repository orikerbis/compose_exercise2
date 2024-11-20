// Set the backend's API endpoint
const apiUrl = 'http://localhost:3000/products';

// Ensure CORS middleware is applied in your backend (only for backend code)

// Function to fetch products and populate the table
async function fetchProducts() {
    try {
        // Fetch data from the API
        const response = await fetch(apiUrl);
        if (!response.ok) throw new Error(`Failed to fetch data: ${response.statusText}`);

        // Parse the JSON response
        const products = await response.json();
        const tableBody = document.getElementById('user-table-body'); // Ensure the element exists in your HTML

        // Clear any existing rows in the table
        tableBody.innerHTML = '';

        // Populate the table with product data
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
// Fetch products when the page loads
fetchProducts();