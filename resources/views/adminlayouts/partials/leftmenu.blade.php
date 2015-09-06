
<ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="{{ route('admin') }}">TRANG CHỦ</a></li>

    <li role="presentation" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product">
      <a href="#">SẢN PHẨM
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="product">
        <li><a href="{{ route('product.index') }}">&nbsp&nbsp&nbspDanh Sách Sản Phẩm</a></li>
        <li><a href="{{ route('product.create') }}">&nbsp&nbsp&nbspThêm Sản Phẩm</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#category" aria-expanded="false" aria-controls="category">
      <a href="#">LOẠI SẢN PHẨM
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="category">
        <li><a href="{{ route('category.index') }}">&nbsp&nbsp&nbspDanh Sách Loại Sản Phẩm</a></li>
        <li><a href="{{ route('category.create') }}">&nbsp&nbsp&nbspThêm Loại Sản Phẩm</a></li>
      </ul>
    </li>

     <li role="presentation" data-toggle="collapse" data-target="#brand" aria-expanded="false" aria-controls="brand">
      <a href="#">NHÃN HIỆU
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="brand">
        <li><a href="{{ route('brand.index') }}">&nbsp&nbsp&nbspDanh Sách Nhãn Hiệu</a></li>
        <li><a href="{{ route('brand.create') }}">&nbsp&nbsp&nbspThêm Nhãn Hiệu</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#origin" aria-expanded="false" aria-controls="origin">
      <a href="#">XUẤT XỨ
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="origin">
        <li><a href="{{ route('origin.index') }}">&nbsp&nbsp&nbspDanh Sách Xuất Xứ</a></li>
        <li><a href="{{ route('origin.create') }}">&nbsp&nbsp&nbspThêm Xuất Xứ</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer">
      <a href="#">KHÁCH HÀNG
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="customer">
        <li><a href="{{ route('customer.index') }}">&nbsp&nbsp&nbspDanh Sách Khách Hàng</a></li>
        <li><a href="{{ route('customer.create') }}">&nbsp&nbsp&nbspThêm Khách Hàng</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#transaction" aria-expanded="false" aria-controls="transaction">
      <a href="#">GIAO DỊCH
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="transaction">
        <li><a href="{{ route('transaction.index') }}">&nbsp&nbsp&nbspDanh Sách Giao Dịch</a></li>
        <li><a href="{{ route('transaction.create') }}">&nbsp&nbsp&nbspThêm Giao Dịch</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#order" aria-expanded="false" aria-controls="order">
      <a href="#">ĐƠN HÀNG 
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="order">
        <li><a href="{{ route('order.index') }}">&nbsp&nbsp&nbspDanh Sách Đơn Hàng</a></li>
        <li><a href="{{ route('order.create') }}">&nbsp&nbsp&nbspThêm Đơn Hàng</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#pay" aria-expanded="false" aria-controls="pay">
      <a href="#">PT THANH TOÁN 
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="pay">
        <li><a href="{{ route('pay.index') }}">&nbsp&nbsp&nbspDanh Sách Phương Thức</a></li>
        <li><a href="{{ route('pay.create') }}">&nbsp&nbsp&nbspThêm Phương Thức</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#ship" aria-expanded="false" aria-controls="ship">
      <a href="#">KV CHUYỂN HÀNG 
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="ship">
        <li><a href="{{ route('ship.index') }}">&nbsp&nbsp&nbspDanh Sách Khu Vực</a></li>
        <li><a href="{{ route('ship.create') }}">&nbsp&nbsp&nbspThêm Khu Vực</a></li>
      </ul>
    </li>

    <li role="presentation" data-toggle="collapse" data-target="#article" aria-expanded="false" aria-controls="article">
      <a href="#">TIN TỨC 
      <span class="caret"></span></a>
      <ul class="nav nav-pills nav-stacked collapse" id="article">
        <li><a href="{{ route('article.index') }}">&nbsp&nbsp&nbspDanh Sách Tin Tức</a></li>
        <li><a href="{{ route('article.create') }}">&nbsp&nbsp&nbspThêm Tin Tức</a></li>
      </ul>
    </li>


    <li role="presentation" data-toggle="collapse" data-target="#contact" aria-expanded="false" aria-controls="contact">
      <a href="{{ route('contact.index') }}">LIÊN HỆ</a>
    </li>

</ul>

