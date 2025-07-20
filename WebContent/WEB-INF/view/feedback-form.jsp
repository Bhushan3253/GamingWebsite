<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Feedback Form</title>
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
-->
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #444;
        }

        p {
            text-align: center;
        }

        form {
            margin-top: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], textarea, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
            min-height: 80px;
        }

        .rating-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .rating-table th, .rating-table td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: center;
        }

        .rating-table th {
            background-color: #f0f0f0;
        }

        .submit-btn {
            display: block;
            width: 100%;
            background-color: #28a745;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Feedback</h1>
        <p>We would love to hear your thoughts or feedback on how we can improve your experience!</p>

        <form action="#" method="POST">
            <label for="name">Name *</label>
            <input type="text" id="name" name="name" required>

            <label for="services">Product/Services availed *</label>
            <select id="services" name="services" required>
                <option value="">-- Select --</option>
                <option value="gaming-consoles">Gaming Consoles</option>
                <option value="accessories">Accessories</option>
                <option value="television">Television</option>
                <option value="gaming-titles">Gaming Titles</option>
                <option value="repair-service">Repair Service</option>
                <option value="game-loading">Game Loading Service</option>
            </select>

            <h3>Please rate the Happy Gaming World Product based on:</h3>
            <table class="rating-table">
                <thead>
                    <tr>
                        <th>Criteria</th>
                        <th>Very Satisfied</th>
                        <th>Satisfied</th>
                        <th>Neutral</th>
                        <th>Dissatisfied</th>
                        <th>Very Dissatisfied</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Good Quality</td>
                        <td><input type="radio" name="quality" value="very-satisfied" required></td>
                        <td><input type="radio" name="quality" value="satisfied"></td>
                        <td><input type="radio" name="quality" value="neutral"></td>
                        <td><input type="radio" name="quality" value="dissatisfied"></td>
                        <td><input type="radio" name="quality" value="very-dissatisfied"></td>
                    </tr>
                    <tr>
                        <td>Reasonable Price</td>
                        <td><input type="radio" name="price" value="very-satisfied" required></td>
                        <td><input type="radio" name="price" value="satisfied"></td>
                        <td><input type="radio" name="price" value="neutral"></td>
                        <td><input type="radio" name="price" value="dissatisfied"></td>
                        <td><input type="radio" name="price" value="very-dissatisfied"></td>
                    </tr>
                    <!-- Add more rows as needed -->
                </tbody>
            </table>

            <!-- Repeat for other sections: Website, Shipping, Customer Service -->

            <label for="price-quality">Please share your opinion about Happy Gaming World Price & Quality *</label>
            <textarea id="price-quality" name="price-quality" required></textarea>

            <label for="customer-service">Please share your opinion about Happy Gaming Customer Services *</label>
            <textarea id="customer-service" name="customer-service" required></textarea>

            <label for="website-usage">Please share your opinion about Happy Gaming Website Usage *</label>
            <textarea id="website-usage" name="website-usage" required></textarea>

            <label for="shipping-services">Please share your opinion about Happy Gaming Shipping Services *</label>
            <textarea id="shipping-services" name="shipping-services" required></textarea>

            <button type="submit" class="submit-btn">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
