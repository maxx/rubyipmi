describe "Chassis Config" do

  before :each do
          user = ENV["ipmiuser"]
          pass = ENV["ipmipass"]
          host = ENV["ipmihost"]
          @conn = Freeipmi.connect(user, pass, host)

  end

  it "test to set booting from PXE" do
    @conn.chassis.config.bootpxe.should == true
  end

  it "test to set booting from Disk" do
      @conn.chassis.config.bootdisk.should == true
  end

  it "test to set booting from Cdrom" do
      @conn.chassis.config.bootcdrom.should == true
  end

  it "test to set booting from bios" do
      @conn.chassis.config.bootbios.should == true
  end

  it "test to set boot persistent value" do

  end

  it "test to checkout the entire chassis config" do

  end



end