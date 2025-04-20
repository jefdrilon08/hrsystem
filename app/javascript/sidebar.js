// app/javascript/sidebar.js
document.addEventListener('DOMContentLoaded', function () {
  const sidebarToggleBtn = document.getElementById('sidebar-toggle');
  const sidebar = document.getElementById('sidebar');

  sidebarToggleBtn.addEventListener('click', function () {
    sidebar.classList.toggle('hidden');
  });
});

