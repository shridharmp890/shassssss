<!DOCTYPE html>
<html>
<head>
    <title>Mark Attendance</title>
    <link rel="stylesheet" href="/static/style.css">
</head>
<body>
    <h1>Attendance Marking</h1>
    <form action="/mark" method="POST">
        <table border="1">
            <tr><th>Roll No</th><th>Name</th><th>Status</th></tr>
            {% for student in students %}
            <tr>
                <td>{{ student.roll_no }}</td>
                <td>{{ student.name }}</td>
                <td>
                    <label><input type="radio" name="{{ student.id }}" value="Present" required> Present</label>
                    <label><input type="radio" name="{{ student.id }}" value="Absent"> Absent</label>
                </td>
            </tr>
            {% endfor %}
        </table>
        <br>
        <button type="submit">Submit Attendance</button>
    </form>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Dashboard</title>
</head>
<body>
    <h1>Attendance Dashboard</h1>
    <table border="1">
        <tr><th>Roll No</th><th>Name</th><th>Presents</th><th>Total Classes</th><th>Percentage</th></tr>
        {% for row in records %}
        <tr>
            <td>{{ row.roll_no }}</td>
            <td>{{ row.name }}</td>
            <td>{{ row.presents }}</td>
            <td>{{ row.total }}</td>
            <td>{{ (row.presents / row.total * 100) if row.total else 0 | round(2) }}%</td>
        </tr>
        {% endfor %}
    </table>
    <br>
    <a href="/">← Back to Mark Attendance</a>
</body>
</html>

