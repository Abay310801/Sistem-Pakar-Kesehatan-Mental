document.addEventListener("DOMContentLoaded", function () {
	const sidebar = document.getElementById("sidebar");

	sidebar.addEventListener("click", function (event) {
		// Tambahkan atau hapus kelas 'fixed' pada sidebar
		sidebar.classList.toggle("fixed");

		// Cegah event click dari menyebabkan penutupan atau pembukaan sidebar
		event.stopPropagation();
	});

	// Tambahkan event click pada body untuk menutup sidebar jika diklik di luar sidebar
	document.body.addEventListener("click", function () {
		if (sidebar.classList.contains("fixed")) {
			// Sidebar sedang terbuka, jadi jangan menutupnya
			return;
		}
		// Sidebar sedang tertutup, buka jika diklik di luar
		sidebar.classList.add("fixed");
	});
});
