<table>
    <thead>
        <th>id</th>
        <th>name</th>
        <th>price</th>
        <th>image</th>
    </thead>
    <tbody>
        <?php foreach($products as $p):?>
            <tr>
                <td><?= $p['id'] ?></td>
                <td><?= $p['name'] ?></td>
                <td><?= $p['price'] ?></td>
                <td><?= $p['image'] ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>