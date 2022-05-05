<jsp:useBean class="model.Counter" id="ct" scope="application"/>
<footer>
        <p>&copy; Copyright ${currentYear} FPT University. 
            All rights reserved.- Hit counter: ${ct.count}</p>
    </footer>
</body>
</html>