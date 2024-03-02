// Add this function in your script.js file
function updateDoctorImage() {
	var selectedDoctor = document.getElementById("doctor-select").value;
	var doctorImageContainer = document.getElementById("header-doctor-image");

	// Change the doctor's image URL based on the selected doctor
	var doctorImageUrl = getDoctorImageUrl(selectedDoctor);

	// Update the doctor's image
	var doctorImage = doctorImageContainer.querySelector("jpeg");
	doctorImage.src = doctorImageUrl;

	// Rest of your JavaScript code...

	// Tampilkan gambar dokter
	doctorImageContainer.innerHTML =
		'<img src="' +
		doctorImageUrl +
		'" alt="Doctor Image" class="rounded-circle" width="100" height="100">';
}

// Fungsi ini memberikan URL gambar dokter sesuai dengan ID dokter
function getDoctorImageUrl(doctorId) {
	// Sesuaikan dengan kebutuhan aplikasi Anda
	switch (doctorId) {
		case "1":
			return "./assets/budi.jpeg";
		case "2":
			return "./assets/andi.jpeg";
		// Tambahkan dokter lainnya sesuai kebutuhan
		default:
			return "default_doctor_image.jpg"; // URL gambar default jika ID dokter tidak ditemukan
	}
}

// Tambahkan script berikut untuk menangani pemilihan dokter dan memulai konsultasi
function startConsultation() {
	var selectedDoctor = document.getElementById("doctor-select").value;
	// Lakukan sesuatu dengan id dokter yang dipilih, misalnya menampilkan pesan atau mengarahkan ke halaman konsultasi
	alert(
		"You selected Doctor " +
			selectedDoctor +
			". Redirect to consultation page..."
	);
}

// Tambahkan script berikut untuk mengirim pesan
function sendMessage() {
	var messageInput = document.getElementById("message-input");
	var chatMessages = document.getElementById("chat-messages");

	if (messageInput.value.trim() !== "") {
		var newMessage = document.createElement("div");
		newMessage.className = "chat-message-right pb-4";
		newMessage.innerHTML = `
            <div class="flex-shrink-1 bg-light-right rounded py-2 px-3 mr-3">
                <div class="font-weight-bold mb-1">You</div>
                ${messageInput.value}
            </div>
        `;

		chatMessages.appendChild(newMessage);
		messageInput.value = "";
		chatMessages.scrollTop = chatMessages.scrollHeight; // Auto scroll to the bottom

		// Simpan pesan ke database (disini Anda perlu menyertakan backend untuk menyimpan data)
		// saveMessageToDatabase('You', messageInput.value); // uncomment this line if you have a backend
	}
}
