    
    
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <!-- sweet alert plugin -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <!-- carrousel -->
    <script type="text/javascript" src="js/slick.min.js"></script>
    <?php
      if(isset($_SESSION['page'])){
        echo('<script type="text/javascript" src="js/plans.js"></script>');
      }
    ?>
  </body>
</html>
