 // Mobile menu toggle functionality
        document.addEventListener('DOMContentLoaded', function() {
            const menuToggle = document.createElement('button');
            menuToggle.className = 'menu-toggle';
            menuToggle.innerHTML = '<i class="fas fa-bars"></i>';
            menuToggle.style.position = 'fixed';
            menuToggle.style.top = '20px';
            menuToggle.style.left = '20px';
            menuToggle.style.zIndex = '1100';
            menuToggle.style.background = 'var(--primary-color)';
            menuToggle.style.color = 'white';
            menuToggle.style.border = 'none';
            menuToggle.style.borderRadius = '50%';
            menuToggle.style.width = '40px';
            menuToggle.style.height = '40px';
            menuToggle.style.display = 'none';
            menuToggle.style.justifyContent = 'center';
            menuToggle.style.alignItems = 'center';
            menuToggle.style.cursor = 'pointer';
            menuToggle.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
            
            document.body.appendChild(menuToggle);
            
            const sidebar = document.querySelector('.dashboard-sidebar');
            
            function checkScreenSize() {
                if (window.innerWidth <= 992) {
                    menuToggle.style.display = 'flex';
                } else {
                    menuToggle.style.display = 'none';
                    sidebar.classList.remove('active');
                }
            }
            
            menuToggle.addEventListener('click', (e) => {
                e.stopPropagation();
                sidebar.classList.toggle('active');
            });
            
            // Close sidebar when clicking outside on mobile
            document.addEventListener('click', (e) => {
                if (window.innerWidth <= 992 && 
                    !sidebar.contains(e.target) && 
                    !menuToggle.contains(e.target)) {
                    sidebar.classList.remove('active');
                }
            });
            
            window.addEventListener('resize', checkScreenSize);
            checkScreenSize();
        });