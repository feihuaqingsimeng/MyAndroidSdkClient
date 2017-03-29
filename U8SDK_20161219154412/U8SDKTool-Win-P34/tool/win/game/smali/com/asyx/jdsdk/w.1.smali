.class public final Lcom/asyx/jdsdk/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://ws.23youxi.com/gettimestamp.ashx"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "GetNotice"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "IsShow"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "IsShow"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "Title"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "Content"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IntoGame"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "IntoGame"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u516c\u544a\u83b7\u53d6\u5931\u8d25\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "BindPlayerPhone"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LoginName"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PhoneNumber"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Captcha"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "BindFastPlayerPhone"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LoginName"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PhoneNumber"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Captcha"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Password"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "RegistePlayerByLoginNameSDK"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Loginname"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Password"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "ChannelKey"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    sget-object v4, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "DeviceCode"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "PlayerID"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Loginname"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Loginname"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u6ce8\u518c\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "CreateIpayNowWeiXinOrder"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "CPKey"

    invoke-virtual {v2, v3, p0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Goods"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GoodsDescription"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargeDirection"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Money"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameZero"

    invoke-virtual {v2, v3, p8}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargePlatform"

    const-string v4, "\u805a\u5408\u5fae\u4fe1"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Memo"

    invoke-virtual {v2, v3, p9}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    const-string v2, "DataInfo"

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7

    const-string v1, "CreateCardOrder"

    new-instance v2, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v3, 0x6e

    invoke-direct {v2, v3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v3

    iput-object v3, v2, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v3, Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "http://23youxi.com/"

    invoke-direct {v3, v4, v1}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PlayerID"

    invoke-virtual {v3, v4, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "GameKey"

    invoke-virtual {v3, v4, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "CPKey"

    invoke-virtual {v3, v4, p0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "Goods"

    invoke-virtual {v3, v4, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "GoodsDescription"

    invoke-virtual {v3, v4, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "RechargeDirection"

    invoke-virtual {v3, v4, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "Money"

    invoke-virtual {v3, v4, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "GameZero"

    invoke-virtual {v3, v4, p8}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "RechargePlatform"

    const-string v5, "\u5145\u503c\u5361"

    invoke-virtual {v3, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "Memo"

    move-object/from16 v0, p9

    invoke-virtual {v3, v4, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "PlatformType"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "CardNum"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "CardPass"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "CardMoney"

    move-object/from16 v0, p12

    invoke-virtual {v3, v4, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "CardCode"

    move-object/from16 v0, p13

    invoke-virtual {v3, v4, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v4, "PlatformID"

    const-string v5, "SDK"

    invoke-virtual {v3, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v3, v2, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v3, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v4, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v3, v4}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://23youxi.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapObject;

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v2}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Success"

    const-string v3, "true"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DataInfo"

    const-string v3, "DataInfo"

    invoke-virtual {v1, v3}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v4

    :cond_0
    const-string v2, "Success"

    const-string v3, "false"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "Message"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Success"

    const-string v3, "false"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Message"

    const-string v3, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "UpdatePlayersOnLine"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerId"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "ModelNo"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "DeviceCode"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Version"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Remark"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://23youxi.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    new-instance v0, Lasyx/kxml2/kdom/Element;

    invoke-direct {v0}, Lasyx/kxml2/kdom/Element;-><init>()V

    const-string v1, "http://23youxi.com/"

    const-string v2, "JDSoapHeader"

    invoke-virtual {v0, v1, v2}, Lasyx/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    new-instance v1, Lasyx/kxml2/kdom/Element;

    invoke-direct {v1}, Lasyx/kxml2/kdom/Element;-><init>()V

    const-string v2, "http://23youxi.com/"

    const-string v3, "VisitKey"

    invoke-virtual {v1, v2, v3}, Lasyx/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v1}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    invoke-static {}, Lcom/asyx/jdsdk/w;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lasyx/kxml2/kdom/Element;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Element;-><init>()V

    const-string v3, "http://23youxi.com/"

    const-string v4, "Timestamp"

    invoke-virtual {v2, v3, v4}, Lasyx/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v2}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "www.23youxi.com"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/asyx/jdsdk/O;->a()Lcom/asyx/jdsdk/O;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asyx/jdsdk/O;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asyx/jdsdk/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lasyx/kxml2/kdom/Element;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Element;-><init>()V

    const-string v3, "http://23youxi.com/"

    const-string v4, "Code"

    invoke-virtual {v2, v3, v4}, Lasyx/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v2}, Lasyx/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lasyx/kxml2/kdom/Element;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "QueryOrderService"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "OrderId"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "ResetPlayerPasswordByVerifyCode"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PhoneNumber"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "VerifyCode"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "newpassword"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u91cd\u7f6e\u5bc6\u7801\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "GetPlayerByIMEISDK"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IMEI"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "ChannelKey"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    sget-object v4, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "DeviceCode"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "PlayerID"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Loginname"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "Loginname"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isbind"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "isbind"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u5feb\u901f\u6e38\u620f\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "RegistePlayerByPhoneSDK"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PhoneNumber"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Captcha"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Password"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "ChannelKey"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    sget-object v4, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "DeviceCode"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "PlayerID"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Loginname"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Loginname"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u6ce8\u518c\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "CreateUnionPayOrder"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "CPKey"

    invoke-virtual {v2, v3, p0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Goods"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GoodsDescription"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargeDirection"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Money"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameZero"

    invoke-virtual {v2, v3, p8}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargePlatform"

    const-string v4, "\u94f6\u884c\u5361"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Memo"

    invoke-virtual {v2, v3, p9}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    const-string v2, "DataInfo"

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "GetAccountMoneySDK"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    sget-object v4, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "AccountMoney"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "AccountMoney"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PaymentMoney"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "PaymentMoney"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u8bf7\u6c42\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "ChangePlayerPassword"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "loginname"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "oldpassword"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "newpassword"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u4fee\u6539\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "CreateConsumeOrder"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "CPKey"

    invoke-virtual {v2, v3, p0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Goods"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GoodsDescription"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargeDirection"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Money"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameZero"

    invoke-virtual {v2, v3, p8}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Memo"

    invoke-virtual {v2, v3, p9}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "CreatePhoneCaptcha"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p1}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PhoneNumber"

    invoke-virtual {v2, v3, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Success"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Message"

    const-string v1, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u6210\u529f\uff01"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Success"

    const-string v1, "false"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Message"

    const-string v1, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "LoginPlayerSDK"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LoginNameOrPhoneNumber"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Password"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "IP"

    sget-object v4, Lcom/asyx/jdsdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DataInfo"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "PlayerID"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Loginname"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v2, "Loginname"

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isbind"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "isbind"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u767b\u5f55\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v0, "CreateAlipayOrder"

    new-instance v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    invoke-static {p0, p2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;)[Lasyx/kxml2/kdom/Element;

    move-result-object v2

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    new-instance v2, Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "http://23youxi.com/"

    invoke-direct {v2, v3, v0}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, p3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameKey"

    invoke-virtual {v2, v3, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "CPKey"

    invoke-virtual {v2, v3, p0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Goods"

    invoke-virtual {v2, v3, p4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GoodsDescription"

    invoke-virtual {v2, v3, p5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargeDirection"

    invoke-virtual {v2, v3, p6}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Money"

    invoke-virtual {v2, v3, p7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "GameZero"

    invoke-virtual {v2, v3, p8}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "RechargePlatform"

    const-string v4, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "Memo"

    invoke-virtual {v2, v3, p9}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformType"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    const-string v3, "PlatformID"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    iput-object v2, v1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    new-instance v2, Lasyx/ksoap2/transport/HttpTransportSE;

    const-string v3, "http://ws.23youxi.com/Services.asmx"

    invoke-direct {v2, v3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://23youxi.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Success"

    const-string v2, "true"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AliPayInfo"

    const-string v2, "DataInfo"

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :cond_0
    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    const-string v1, "Message"

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Success"

    const-string v2, "false"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Message"

    const-string v2, "\u8bf7\u6c42\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
