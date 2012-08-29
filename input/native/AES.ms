/**

This class represents implementations of the Advanced Encryption Standard (AES).
Advanced Encryption Standard is a specification for the encryption of electronic data using symmetric-key algorithm, what means that the same key is used for both encrypting and decrypting.
@class AES

@module crypto
@example
    //dat://input.txt contains: Moscrif is the best cross-platform SDK.
    AES.fileEncrypt("dat://input.txt", "dat://output.txt", "password");
    
    //dat://output.txt contains crypted data in binary format
    AES.fileDecrypt("dat://output.txt", "dat://decrepted.txt", "password");
    
    //dat://decrepted.txt contains: Moscrif is the best cross-platform SDK
*/
class AES
{

    /**
    This function encrypts source file by Advanced Encryption Standard. The result is saved to output file. If output file does not exist, a new one is created.
    @method fileEncrypt
    @param {String} input source file.
    @param {String} output encrypted file.
    @param {String} password key.
    @example
        //dat://input.txt contains: Moscrif is the best cross-platform SDK.
        AES.fileEncrypt("dat://input.txt", "dat://output.txt", "password");
    
        //dat://output.txt contains crypted data in binary format
    */
    function fileEncrypt(input, output, password) { }

    /**
    This function decrypts file and save result to output file. If output file does not exist a new one is created.
    @method fileDecrypt
    @param {String} input source file.
    @param {String} output encrypted file.
    @param {String} password key.
    @example
        //dat://output.txt contains crypted data in binary format
        AES.fileDecrypt("dat://output.txt", "dat://decrepted.txt", "password");
    
        //dat://decrepted.txt contains: Moscrif is the best cross-platform SDK.
    */
    function fileDecrypt(input, output, password) { }

}