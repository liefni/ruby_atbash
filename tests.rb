require './atbash_cypher.rb'

class AtbashTests
  def decrypt_test
    cypher = AtbashCypher.new
    cypher.original_chars = 'abcdefghijklmnopqrstuvwxyz'
    cypher.replacement_chars = 'oephjizkxdawubnytvfglqsrcm'
    result = cypher.decrypt('knlfgnb, sj koqj o yvnewju')
    if (result != 'houston, we hove o problem')
      puts 'error: dycrypt_test failed'
    end
  end
end

AtbashTests.new.decrypt_test
puts 'testing complete'
