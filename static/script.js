document.getElementById("academicChanges").addEventListener("submit", function (event) {
      event.preventDefault(); // Prevent the form from submitting initially
  
      // Validate each row before submitting the form
      if (validateRows()) {
        // If all rows are valid, submit the form
        this.submit();
      } else {
        // If any row is invalid, display an error message
        alert("Error: Please fill in all fields for each row.");
      }
    });
  
    function validateRows() {
      // Get all rows in the table body
      const rows = document.querySelectorAll('#mentee-grades1 tbody tr');
  
      // Iterate over each row and validate its input fields
      for (let row of rows) {
        // Get input fields in the current row
        const inputs = row.querySelectorAll('input[type="text"]');
  
        // Check if any input field in the row is empty
        for (let input of inputs) {
          if (!input.value.trim()) {
            return false; // Return false if any field in the row is empty
          }
        }
      }
  
      return true; // Return true if all rows have all fields filled in
    }
  
    function addRow() {
      const rowCountInput = document.getElementById('row-count');
      let rowCount = parseInt(rowCountInput.value);
  
      const tableBody = document.querySelector('#mentee-grades1 tbody');
  
      // Check if table body exists, create it if not
      if (!tableBody) {
        console.error('Table body does not exist.');
        return;
      }
  
      const newRow = document.createElement('tr');
      newRow.innerHTML = `
        <td>${rowCount + 1}</td>
        <td><input type="text" name="subject_${rowCount}" class="form" placeholder="Enter subject ${rowCount + 1}"></td>
        <td><input type="text" name="marks_ia_${rowCount}" class="form" placeholder="Enter marks"></td>
        <td><input type="text" name="marks_sem_${rowCount}" class="form" placeholder="Enter marks"></td>
        <td><input type="text" name="total_marks_${rowCount}" class="form" placeholder="Enter marks"></td>
      `;
  
      tableBody.appendChild(newRow);
  
      // Increment the row count and update the hidden input field
      rowCount++;
      rowCountInput.value = rowCount;
    }
  
    function deleteRow() {
      const rowCountInput = document.getElementById('row-count');
      let rowCount = parseInt(rowCountInput.value);
  
      if (rowCount > 0) {
        // Decrement the row count
        rowCount--;
  
        // Update the hidden input field
        rowCountInput.value = rowCount;
  
        // Find the table's tbody
        const tableBody = document.querySelector('#mentee-grades1 tbody');
  
        // Remove the last row
        if (tableBody && tableBody.children.length > 0) {
          tableBody.removeChild(tableBody.lastElementChild);
        }
      }
    }
  
    $(document).ready(function () {
      $("#personal_details-btn").click(function () {
        $("#personal_details").show();  // Show personal details
        $("#academic_details").hide();  // Hide academic details
      });
  
      $("#academic_details-btn").click(function () {
        $("#academic_details").show();  // Show academic details
        $("#personal_details").hide();  // Hide personal details
      });
    });
  
    function updateProfilePicture(input) {
      const profilePicture = document.getElementById("profilePicture");
  
      if (input.files && input.files[0]) {
        const reader = new FileReader();
  
        reader.onload = function (e) {
          profilePicture.src = e.target.result;
        };
  
        reader.readAsDataURL(input.files[0]);
      }
    }
  
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
  
        reader.onload = function (e) {
          $('#blah').attr('src', e.target.result);
        };
  
        reader.readAsDataURL(input.files[0]);
      }
    }

    function toggleCollapse() {
      $('#navbarSupportedContent').collapse('toggle');
  }

  // Toggle the collapse element when the button is clicked
  $('.btn-toggle-collapse').on('click', function () {
      toggleCollapse();
  });
  
  $(document).ready(function () {
    $("#sidebar").mCustomScrollbar({
        theme: "minimal"
    });

    // Function to toggle the sidebar
    function toggleSidebar() {
        $('#sidebar, #content').toggleClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
    }

    // Toggle sidebar on button click
    $('#sidebarCollapse, .toggle-sidebar').on('click', function () {
        toggleSidebar();
    });

    // Close the sidebar when the window is resized (optional)
    $(window).resize(function () {
        if ($(window).width() <= 768) {
            if ($('#sidebar').hasClass('active')) {
                toggleSidebar();
            }
        }
    });
});

window.botpressWebChat.init({
      "composerPlaceholder": "Chat with bot",
      "botConversationDescription": "This chatbot was built surprisingly fast with Botpress",
      "botId": "46194b2c-bdc1-475c-989a-5f1bc81be3de",
      "hostUrl": "https://cdn.botpress.cloud/webchat/v1",
      "messagingUrl": "https://messaging.botpress.cloud",
      "clientId": "46194b2c-bdc1-475c-989a-5f1bc81be3de",
      "webhookId": "58fc4575-da25-4d25-b6aa-480a59cfb13a",
      "lazySocket": true,
      "themeName": "prism",
      "frontendVersion": "v1",
      "useSessionStorage": true,
      "enableConversationDeletion": true,
      "theme": "prism",
      "themeColor": "#2563eb"
  });

const menteeSearchInput = document.getElementById("menteeSearch");
    const menteeTable = document.querySelector("table");

    // Add an event listener to the search input
    menteeSearchInput.addEventListener("input", function () {
        const searchTerm = menteeSearchInput.value.trim().toLowerCase();
        const rows = menteeTable.querySelectorAll("tbody tr");

        rows.forEach(function (row) {
            const menteeName = row.querySelector("td:first-child").textContent.toLowerCase();
            if (menteeName.includes(searchTerm)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });
    });


    document.addEventListener("DOMContentLoaded", function () {
      // Get references to the buttons
      const academicDetailsBtn = document.getElementById("academic_details-btn");
      const viewAcademicBtn = document.getElementById("view-academic-btn");
      const personalDetailsBtn = document.getElementById("personal_details-btn");
      const saveChangesBtn = document.getElementById("save-changes-btn");
  
      // Check if the button should be visible based on stored state
      const viewAcademicBtnVisible = localStorage.getItem("viewAcademicBtnVisible");
      if (viewAcademicBtnVisible === "true") {
        viewAcademicBtn.style.display = "block";
        saveChangesBtn.style.display = "none";
      } else {
        viewAcademicBtn.style.display = "none";
        saveChangesBtn.style.display = "block";
      }
  
      // Add event listener to the academic details button
      academicDetailsBtn.addEventListener("click", function () {
        // Show the view academic details button
        viewAcademicBtn.style.display = "block";
        // Hide the save changes button
        saveChangesBtn.style.display = "none";
        // Store visibility state in local storage
        localStorage.setItem("viewAcademicBtnVisible", "true");
      });
  
      // Add event listener to the personal details button
      personalDetailsBtn.addEventListener("click", function () {
        // Hide the view academic details button
        viewAcademicBtn.style.display = "none";
        // Show the save changes button
        saveChangesBtn.style.display = "block";
        // Store visibility state in local storage
        localStorage.setItem("viewAcademicBtnVisible", "false");
      });
    });
  