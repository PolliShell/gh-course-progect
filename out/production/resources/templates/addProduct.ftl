<div class="formbold-main-wrapper">
    <div class="formbold-form-wrapper">
        <form action="/add-new-product" method="POST" enctype="multipart/form-data">
            <div class="formbold-input-flex">
                <div>
                    <input
                            type="text"
                            name="productName"
                            id="productName"
                            placeholder="TV"
                            class="formbold-form-input"
                    />
                    <label for="productName" class="formbold-form-label"> Product Name </label>
                </div>
                <div>
                    <input
                            type="number"
                            name="quantity"
                            id="quantity"
                            placeholder="1"
                            class="formbold-form-input"
                    />
                    <label for="quantity" class="formbold-form-label"> Quantity </label>
                </div>
            </div>

            <div class="formbold-input-flex">
                <div>
                    <input
                            type="number"
                            name="price"
                            id="price"
                            placeholder="100$"
                            class="formbold-form-input"
                    />
                    <label for="price" class="formbold-form-label"> Price </label>
                </div>
                <div>
                    <input
                            type="text"
                            name="description"
                            id="description"
                            placeholder="..."
                            class="formbold-form-input"
                    />
                    <label for="description" class="formbold-form-label"> Product description </label>
                </div>
            </div>
           <div class="form-group">
                <label for="file">Choose image</label>
                <input type="file" id="file" name="file" class="form-control-file">
            </div>

            <select id="category" name="category.id" class="box" required>
                <#list categories as category>
                <option value="${category.id}">${category.name}</option>
            </#list>
            </select><br>
            <select id="city" name="city.id" class="box" required>
                <#list cities as city>
                <option value="${city.id}">${city.name}</option>
            </#list>
            </select>

            <button class="formbold-btn">
                Add Product
            </button>
        </form>
    </div>
</div>
<style>


    .box {
        width: 120px;
        height: 30px;
        border: 1px solid #999;
        font-size: 18px;
        color: #6A64F1;
        background-color: #eee;
        border-radius: 5px;
        box-shadow: 4px 4px #ccc;
    }

    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: "Inter", sans-serif;
    }
    .formbold-main-wrapper {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 48px;
    }

    .formbold-form-wrapper {
        margin: 0 auto;
        max-width: 550px;
        width: 100%;
        background: white;
    }

    .formbold-input-flex {
        display: flex;
        gap: 20px;
        margin-bottom: 22px;
    }
    .formbold-input-flex > div {
        width: 50%;
        display: flex;
        flex-direction: column-reverse;
    }
    .formbold-textarea {
        display: flex;
        flex-direction: column-reverse;
    }

    .formbold-form-input {
        width: 100%;
        padding-bottom: 10px;
        border: none;
        border-bottom: 1px solid #DDE3EC;
        background: #FFFFFF;
        font-weight: 500;
        font-size: 16px;
        color: #07074D;
        outline: none;
        resize: none;
    }
    .formbold-form-input::placeholder {
        color: #536387;
    }
    .formbold-form-input:focus {
        border-color: #6A64F1;
    }
    .formbold-form-label {
        color: #07074D;
        font-weight: 500;
        font-size: 14px;
        line-height: 24px;
        display: block;
        margin-bottom: 18px;
    }
    .formbold-form-input:focus + .formbold-form-label {
        color: #6A64F1;
    }

    .formbold-input-file {
        margin-top: 30px;
    }
    .formbold-input-file input[type="file"] {
        position: absolute;
        top: 6px;
        left: 0;
        z-index: -1;
    }
    .formbold-input-file .formbold-input-label {
        display: flex;
        align-items: center;
        gap: 10px;
        position: relative;
    }

    .formbold-filename-wrapper {
        display: flex;
        flex-direction: column;
        gap: 6px;
        margin-bottom: 22px;
    }
    .formbold-filename {
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size: 14px;
        line-height: 24px;
        color: #536387;
    }
    .formbold-filename svg {
        cursor: pointer;
    }

    .formbold-btn {
        font-size: 16px;
        border-radius: 5px;
        padding: 12px 25px;
        border: none;
        font-weight: 500;
        background-color: #6A64F1;
        color: white;
        cursor: pointer;
        margin-top: 25px;
    }
    .formbold-btn:hover {
        box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
    }

</style>