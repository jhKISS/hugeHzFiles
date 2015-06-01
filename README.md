## hugeHzFiles
#### My collection of frequently used files and structures focusted on web development, Symfony2, Eclipse and Linux
There is no restriction in the data type. The usefullness decides. The snippets presentation is done simple, short and usefull in pseudo code. If necessary, files will be in a linked folder and/or a gist.

<hr>
##### Pakage Manager List
Pre-work with a deployment generator in mind.
  ```
  {
    date => '2015-05-29',
    keys {
      apt,
      npm,
      bower,
      component
    }
  }
  ```
<hr>
##### Symfony2 Standard Composer Configuration
  ```
  {
    date => '2015-05-29',
    subject => 'Symfony2 Standard Composer Configuration',
    link => 'https://jhKISS.github.io/hugeHzFiles/symfony2StandardComposerConfiguration,
    type => 'folder'
  }
  ```

<hr>
##### SQL to create a new database and database user
Maximum simple ...

    ```
    # 2015-05-29
    KEY='';
    PASSWORD='';
    
    create database $KEY;
    grant all on $KEY.* to "$KEY"@'localhost' identified by "$PASSWORD";
    ```

<hr>
##### normalize.css
  ```
  {
    date => '2015-05-29',
    type => 'CSS',
    name => 'normalize.css',
    link => 'https://jhKISS.github.io/hugeHzFiles/normalize/normalize.css',
    source => 'https://github.com/necolas/normalize.css.git'
  }
  ```

<hr>
##### compiler.jar
  ```
  {
    date => '2015-06-01',
    name => 'compiler.jar',
    files {
      'compiler.jar',
      'COPYING',
      'README.md'
    },
    source => 'http://dl.google.com/closure-compiler/compiler-latest.zip'
  }
  ```

<table>
  <tr>
    <td>
      Source:
    </td><td>
      http://dl.google.com/closure-compiler/compiler-latest.zip
    </td>
  </tr><tr>
    <td>
      Symfony2:
    </td><td>
      %kernel.root_dir%/Resources/java/compiler.jar<br>
      app/config/config.yml
    </td>
  </tr>
</table>
<hr>

##### yuicompressor
  ```
  {
    date => '2015-06-01',
    subject => 'yuicompressor-${version}.jar',
    source => 'https://github.com/yui/yuicompressor',
    link => 'https://github.com/jhKISS/hugeHzFiles/tree/master/yuicompressor,
    type => 'folder'
  }
  ```

##### Dummy Image Generator
  ```
  {
    date => '2015-06-01',
    link => 'https://github.com/jhKISS/hugeHzFiles/tree/master/dummyImageGenerator,
    type => 'folder'
  }
  ```

