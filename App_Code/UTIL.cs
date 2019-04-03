using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Net;
using System.Web.Configuration;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Drawing.Drawing2D;

/// <summary>
/// Summary description for UTIL
/// </summary>
public class UTIL
{
    public UTIL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// Using for encrypt a string
    /// </summary>
    /// <param name="toEncrypt"></param>
    /// <param name="useHashing"></param>
    /// <returns></returns>
    /// 

    public static DateTime StringToDate(string s, bool Time = true)
    {
        //// 2015/11/01 09:10    m-d-y
        //string[] a = s.Split(' ');
        //a = a[0].Split('/');
        //int month = Int32.Parse(a[0]);
        //int day = Int32.Parse(a[1]);
        //int year = Int32.Parse(a[2]);
        //a = a[1].Split(':');
        //int hour = Int32.Parse(a[0]);
        //int min = Int32.Parse(a[1]);
        int month = Convert.ToInt32(s.Split('/')[0]);
        int day = Convert.ToInt32(s.Split('/')[1]);
        int year = Convert.ToInt32(s.Split('/')[2].Split(' ')[0]);


        if (Time)
        {
            int hour = Convert.ToInt32(s.Split('/')[2].Split(' ')[1].Split(':')[0]);
            int mins = Convert.ToInt32(s.Split('/')[2].Split(' ')[1].Split(':')[1]);
            //int second = Convert.ToInt32(s.Split('/')[2].Split(' ')[1].Split(':')[2]);
            return new DateTime(year, month, day, hour, mins, 0);
        }
        else
        {
            return new DateTime(year, month, day);
        }



        //return new DateTime(year, month, day,hour,mins,0);
    }
    public static string Encrypt(string toEncrypt, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);

        System.Configuration.AppSettingsReader settingsReader =
                                            new AppSettingsReader();
        // Get the key from config file

        string key = (string)settingsReader.GetValue("SecurityKey",
                                                         typeof(String));
        //System.Windows.Forms.MessageBox.Show(key);
        //If hashing use get hashcode regards to your key
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            //Always release the resources and flush data
            // of the Cryptographic service provide. Best Practice

            hashmd5.Clear();
        }
        else
            keyArray = UTF8Encoding.UTF8.GetBytes(key);

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        //set the secret key for the tripleDES algorithm
        tdes.Key = keyArray;
        //mode of operation. there are other 4 modes.
        //We choose ECB(Electronic code Book)
        tdes.Mode = CipherMode.ECB;
        //padding mode(if any extra byte added)

        tdes.Padding = PaddingMode.PKCS7;

        ICryptoTransform cTransform = tdes.CreateEncryptor();
        //transform the specified region of bytes array to resultArray
        byte[] resultArray =
          cTransform.TransformFinalBlock(toEncryptArray, 0,
          toEncryptArray.Length);
        //Release resources held by TripleDes Encryptor
        tdes.Clear();
        //Return the encrypted data into unreadable string format
        return Convert.ToBase64String(resultArray, 0, resultArray.Length);
    }

    /// <summary>
    /// Using for decrypt a string
    /// </summary>
    /// <param name="cipherString"></param>
    /// <param name="useHashing"></param>
    /// <returns></returns>
    public static string Decrypt(string cipherString, bool useHashing)
    {
        byte[] keyArray;
        //get the byte code of the string

        byte[] toEncryptArray = Convert.FromBase64String(cipherString);

        System.Configuration.AppSettingsReader settingsReader =
                                            new AppSettingsReader();
        //Get your key from config file to open the lock!
        string key = (string)settingsReader.GetValue("SecurityKey",
                                                     typeof(String));

        if (useHashing)
        {
            //if hashing was used get the hash code with regards to your key
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            //release any resource held by the MD5CryptoServiceProvider

            hashmd5.Clear();
        }
        else
        {
            //if hashing was not implemented get the byte code of the key
            keyArray = UTF8Encoding.UTF8.GetBytes(key);
        }

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        //set the secret key for the tripleDES algorithm
        tdes.Key = keyArray;
        //mode of operation. there are other 4 modes. 
        //We choose ECB(Electronic code Book)

        tdes.Mode = CipherMode.ECB;
        //padding mode(if any extra byte added)
        tdes.Padding = PaddingMode.PKCS7;

        ICryptoTransform cTransform = tdes.CreateDecryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(
                             toEncryptArray, 0, toEncryptArray.Length);
        //Release resources held by TripleDes Encryptor                
        tdes.Clear();
        //return the Clear decrypted TEXT
        return UTF8Encoding.UTF8.GetString(resultArray);
    }

    /// <summary>
    /// sending email , subject is title of email, body is the content, FromName is the name of who send email
    /// </summary>
    /// <param name="Email"></param>
    /// <param name="Subject"></param>
    /// <param name="Body"></param>
    /// <param name="FromName"></param>
    public static void SendMail(string EmailTo, string Subject, string Body, string FromName)
    {
        // Gmail Address from where you send the mail
        // default test@ferya.info | pass Capsole1@ | Host mail.iris.arvixe.com | port 25

        // from source email to send
        string FromAddress = WebConfigurationManager.AppSettings["Email_ID"].ToString();

        string FromPassword = WebConfigurationManager.AppSettings["Email_Pass"].ToString();


        System.Net.Mail.MailMessage eMail = new System.Net.Mail.MailMessage();
        eMail.IsBodyHtml = true;
        eMail.Body = Body;
        eMail.From = new System.Net.Mail.MailAddress(FromAddress, FromName);
        eMail.To.Add(EmailTo);
        eMail.Subject = Subject;
        System.Net.Mail.SmtpClient SMTP = new System.Net.Mail.SmtpClient();

        SMTP.Credentials = new System.Net.NetworkCredential(FromAddress, FromPassword);
        SMTP.Host = WebConfigurationManager.AppSettings["Email_Host"];
        SMTP.Send(eMail);
    }
    public static string RemoveSpecial(string str)
    {
        return Regex.Replace(str.Replace("-", " ").Trim(), @"[^\w ]", string.Empty);
    }
    public static string Url(string str)
    {
        return Regex.Replace(Method2(RemoveSpecial(str)), @"\s+", "-").Replace("--", "-").ToLower();
    }
    public static string SearchTag(string str)
    {
        return Regex.Replace(RemoveSpecial(str), @"\s+", " ");
    }
    public static string File(string str)
    {
        return Regex.Replace(Method2(RemoveSpecial(str)), @"\s+", "_");
    }
    public static string ReplaceMultiSpaceWithOne(string str)
    {
        return Regex.Replace(str.Trim(), @"\s+", " ");
    }
    public static string Tag(string str)
    {
        return ReplaceMultiSpaceWithOne(str).Replace(" , ", ",").Replace(" ,", ",").Replace(", ", ",").Replace(",", ", ");
    }
    public static string SearchColumn(string str)
    {
        return Method2(RemoveSpecial(str)).ToLower();
    }

    public static string Method1(string s)
    {
        string stFormD = s.Normalize(NormalizationForm.FormD);
        StringBuilder sb = new StringBuilder();
        for (int ich = 0; ich < stFormD.Length; ich++)
        {
            System.Globalization.UnicodeCategory uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(stFormD[ich]);
            if (uc != System.Globalization.UnicodeCategory.NonSpacingMark)
            {
                sb.Append(stFormD[ich]);
            }
        }
        sb = sb.Replace('Đ', 'D');
        sb = sb.Replace('đ', 'd');
        return (sb.ToString().Normalize(NormalizationForm.FormD));
    }
    public static string Method2(string s)
    {
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = s.Normalize(NormalizationForm.FormD);
        return regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
    }
    public static string EncryptPass(string pass)
    {
        return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "SHA1");
    }

    public static string FormatCurrency(object interger)
    {
        CultureInfo ci = new CultureInfo("vi-VN");

        int number = Convert.ToInt32(interger);

        return number.ToString("#,### VNĐ", ci);
    }
    public static string FormatPercenReduced(object bigNum, object smallNum)
    {
        double numBig = Convert.ToDouble(bigNum);
        double numSmall = Convert.ToDouble(smallNum);

        double num = (numSmall * 100) / numBig;
        num = 100 - num;

        return "- " + num.ToString("#.##") + " %";
    }



    public static string RemoveSign4VietnameseString(string str)
    {
        string[] VietnameseSigns = new string[]
        {
            "aAeEoOuUiIdDyY",

            "áàạảãâấầậẩẫăắằặẳẵ",

            "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",

            "éèẹẻẽêếềệểễ",

            "ÉÈẸẺẼÊẾỀỆỂỄ",

            "óòọỏõôốồộổỗơớờợởỡ",

            "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",

            "úùụủũưứừựửữ",

            "ÚÙỤỦŨƯỨỪỰỬỮ",

            "íìịỉĩ",

            "ÍÌỊỈĨ",

            "đ",

            "Đ",

            "ýỳỵỷỹ",

            "ÝỲỴỶỸ"
        };

        for (int i = 1; i < VietnameseSigns.Length; i++)
        {
            for (int j = 0; j < VietnameseSigns[i].Length; j++)
                str = str.Replace(VietnameseSigns[i][j], VietnameseSigns[0][i - 1]);
        }

        return str;
    }
    public static string RemoveRegex(string input)
    {
        Regex rgx = new Regex("[^a-zA-Z0-9 ]");
        string newText = rgx.Replace(input, "");
        return newText;
    }
    public static string FormatLink(string input)
    {
        input = RemoveSign4VietnameseString(input);
        input = RemoveRegex(input);
        input = input.Trim().Replace(" ", "-").Replace("--", "-").Replace("---", "-").ToLower();
        return input;

    }
    // Get IP Address
    public static string GetIPAddress()
    {
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        if (!string.IsNullOrEmpty(ipAddress))
        {
            string[] addresses = ipAddress.Split(',');
            if (addresses.Length != 0)
            {
                return addresses[0];
            }
        }

        return context.Request.ServerVariables["REMOTE_ADDR"];
    }

    public static string HTMLToContent(string input)
    {
        List<char> listCharInput = input.ToList();

        bool canDeleteThisChar = false;
        for (int i = 0; i < listCharInput.Count; i++)
        {
            // check special tag 
            if (listCharInput[i] == '<')
            {
                canDeleteThisChar = true;
            }
            else if (listCharInput[i] == '>')
            {
                listCharInput.RemoveAt(i);
                i -= 1;

                canDeleteThisChar = false;
            }

            // delte if tag '<' or inside tag
            if (canDeleteThisChar)
            {
                listCharInput.RemoveAt(i);
                i -= 1;
            }
        }

        return new string(listCharInput.ToArray());
    }
    
    /// <summary>
    /// get value from url (ex: https://example.com?token=abcxyz)
    /// </summary>
    /// <param name="url"></param>
    /// <returns></returns>
    public static string HttpGetRequest(string url)
    {
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream resStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(resStream);

        return reader.ReadToEnd();
    }

    /// <summary>
    /// To demonstrate extraction of file extension from base64 string.
    /// </summary>
    /// <param name="base64String">base64 string.</param>
    /// <returns>Henceforth file extension from string.</returns>
    public static string GetFileExtension(string base64String)
    {
        var data = base64String.Substring(0, 5);

        switch (data.ToUpper())
        {
            case "IVBOR":
                return "png";
            case "/9J/4":
                return "jpg";
            case "AAAAF":
                return "mp4";
            case "JVBER":
                return "pdf";
            case "AAABA":
                return "ico";
            case "UMFYI":
                return "rar";
            case "E1XYD":
                return "rtf";
            case "U1PKC":
                return "txt";
            case "MQOWM":
            case "77U/M":
                return "srt";
            default:
                return string.Empty;
        }
    }

    // ====================================================
    #region CreateToken
    
    /// <summary>
    /// Create random string do not have any special character, from "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    /// </summary>
    /// <param name="stringLength">Length of random string</param>
    /// <returns></returns>
    public static string CreateRandomStringWithoutSpecialChars(int stringLength)
    {
        // chars inside
        var strChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var chars = new char[stringLength];
        var random = new System.Random();

        for (int i = 0; i < chars.Length; i++)
        {
            chars[i] = strChars[random.Next(strChars.Length)];
        }

        return new String(chars);
    }

    /// <summary>
    /// Create a new random string from characters of the input string
    /// </summary>
    /// <param name="stringInput"></param>
    /// <returns></returns>
    public static string SortStringRandomCharsPosition(string stringInput)
    {
        Char[] arrCharsInString = stringInput.ToCharArray();

        Random rd = new Random();
        for (int i = 0; i < arrCharsInString.Length; i++)
        {
            int randomNumber = rd.Next(0, arrCharsInString.Length);

            // Swap i pos with randomNumber position in array
            char tempChar = arrCharsInString[i];
            arrCharsInString[i] = arrCharsInString[randomNumber];
            arrCharsInString[randomNumber] = tempChar;
        }

        return new String(arrCharsInString);
    }

    /// <summary>
    /// Create random string with @ inside
    /// </summary>
    /// <param name="stringLength">Length of random string</param>
    /// <param name="atSignCount">How many "@" inside</param>
    /// <returns></returns>
    public static string CreateRandomStringWithAtSign(int stringLength, int atSignCount)
    {
        if (atSignCount >= stringLength - 2) return "So much @ count";

        // Create string
        string newString = CreateRandomStringWithoutSpecialChars(stringLength - atSignCount);
        for (int i = 0; i < atSignCount; i++)
        {
            newString += "@";
        }

        return SortStringRandomCharsPosition(newString);
    }
    #endregion

    // ====================================================
    // 

    public static void CreateThumbnail(int ThumbnailMax, string OriginalImagePath, string ThumbnailImagePath)
    {
        // Loads original image from file
        System.Drawing.Image imgOriginal = System.Drawing.Image.FromFile(OriginalImagePath);
        // Finds height and width of original image
        float OriginalHeight = imgOriginal.Height;
        float OriginalWidth = imgOriginal.Width;
        // Finds height and width of resized image
        int ThumbnailWidth;
        int ThumbnailHeight;
        if (OriginalHeight > OriginalWidth)
        {
            ThumbnailHeight = ThumbnailMax;
            ThumbnailWidth = (int)((OriginalWidth / OriginalHeight) * (float)ThumbnailMax);
        }
        else
        {
            ThumbnailWidth = ThumbnailMax;
            ThumbnailHeight = (int)((OriginalHeight / OriginalWidth) * (float)ThumbnailMax);
        }
        // Create new bitmap that will be used for thumbnail
        Bitmap ThumbnailBitmap = new Bitmap(ThumbnailWidth, ThumbnailHeight);
        Graphics ResizedImage = Graphics.FromImage(ThumbnailBitmap);
        // Resized image will have best possible quality
        ResizedImage.InterpolationMode = InterpolationMode.HighQualityBicubic;
        ResizedImage.CompositingQuality = CompositingQuality.HighQuality;
        ResizedImage.SmoothingMode = SmoothingMode.HighQuality;
        // Draw resized image
        ResizedImage.DrawImage(imgOriginal, 0, 0, ThumbnailWidth, ThumbnailHeight);
        // Save thumbnail to file
        ThumbnailBitmap.Save(ThumbnailImagePath);
    }
}