require './atbash_cypher.rb'

ORIGINAL_CHARS =    'abcdefghijklmnopqrstuvwxyz'
REPLACEMENT_CHARS = 'oephjizkxdawubnytvfglqsrcm'
ENCRYPTED_TEXT = 'knlfgnb, sj koqj o yvnewju'
cypher = AtbashCypher.new()
cypher.original_chars = ORIGINAL_CHARS
cypher.replacement_chars = REPLACEMENT_CHARS
puts cypher.decrypt(ENCRYPTED_TEXT)