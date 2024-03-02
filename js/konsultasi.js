document.addEventListener("DOMContentLoaded", function () {
	const questionContainer = document.getElementById("questionContainer");

	for (let i = 1; i <= 2; i++) {
		const table = document.createElement("table");
		table.classList.add("questionTable");

		const questionRow = table.insertRow();
		const questionCell = questionRow.insertCell();
		questionCell.colSpan = 2;

		const answerRow = table.insertRow();
		const answerCell = answerRow.insertCell();

		questionCell.innerHTML = <label class="question">Pertanyaan ke-${i}</label>;
		answerCell.innerHTML = `
            <label><input type='radio' name='jawaban${i}' value='4'> Sangat Yakin</label>
            <label><input type='radio' name='jawaban${i}' value='3'> Yakin</label>
            <label><input type='radio' name='jawaban${i}' value='2'> Cukup Yakin</label>
            <label><input type='radio' name='jawaban${i}' value='1'> Kurang Yakin</label>
            <label><input type='radio' name='jawaban${i}' value='0'> Tidak Tahu</label>
            <label><input type='radio' name='jawaban${i}' value='-1'> Tidak</label>
        `;

		questionContainer.appendChild(table);

		// Tambahkan event listener untuk toggle pertanyaan
		const questionLabel = questionCell.querySelector(".question");
		const answerContainer = answerCell;

		questionLabel.addEventListener("click", function () {
			answerContainer.classList.toggle("show");
		});
	}
});
