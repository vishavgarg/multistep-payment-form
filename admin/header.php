    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Admin</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <?php
                    if(isset($_SESSION['admin'])){
                        ?>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="dashboard.php">First Event</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="subcategory.php">Sub-Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="otherevents.php">Other Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="logout.php">Logout</a>
                    </li>
                   <?php
                    }
                    ?>
                </ul>
                
            </div>
        </div>
    </nav>