class boxer {
  package { 'boxer':
    provider   => 'compressed_app',
    source => 'https://cloud.github.com/downloads/alunbestor/Boxer/boxer-1.3.2-20120713.1.zip'
  }
}