class Flyway < Formula
  homepage "http://flywaydb.org"
  url "http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.2.1/flyway-commandline-3.2.1.tar.gz"
  sha256 "da942c3b96d89ca221617a720c1945d16dadf142313380a71a825e62821d0a2b"

  depends_on :java => "1.7"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"flyway" => "flyway"
  end

  test do
    system "#{bin}/flyway"
  end

  def caveats
    "Make sure you have Java 7+ installed and set JAVA_HOME"
  end
end
