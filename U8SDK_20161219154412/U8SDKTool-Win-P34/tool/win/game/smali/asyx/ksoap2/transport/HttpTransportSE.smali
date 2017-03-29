.class public Lasyx/ksoap2/transport/HttpTransportSE;
.super Lasyx/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentLength"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "contentLength"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method private getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    check-cast p1, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local p1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object p1

    .line 345
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    goto :goto_0
.end method

.method private readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I
    .param p3, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 307
    if-eqz p3, :cond_1

    .line 308
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 314
    .end local p2    # "contentLength":I
    .local v0, "bos":Ljava/io/OutputStream;
    :goto_0
    new-array v1, v5, [B

    .line 317
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 318
    .local v2, "rd":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 324
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 325
    instance-of v3, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_0

    .line 326
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "bos":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 328
    :cond_0
    const/4 v0, 0x0

    .line 329
    .restart local v0    # "bos":Ljava/io/OutputStream;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lasyx/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 332
    if-eqz p3, :cond_4

    .line 333
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 335
    :goto_2
    return-object v3

    .line 311
    .end local v0    # "bos":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "rd":I
    .restart local p2    # "contentLength":I
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-lez p2, :cond_2

    .end local p2    # "contentLength":I
    :goto_3
    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v0    # "bos":Ljava/io/OutputStream;
    goto :goto_0

    .end local v0    # "bos":Ljava/io/OutputStream;
    .restart local p2    # "contentLength":I
    :cond_2
    const/high16 p2, 0x40000

    goto :goto_3

    .line 321
    .end local p2    # "contentLength":I
    .restart local v0    # "bos":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "rd":I
    :cond_3
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 335
    :cond_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_2
.end method


# virtual methods
.method public call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/ksoap2/transport/HttpResponseException;,
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;
    .locals 20
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .param p4, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/ksoap2/transport/HttpResponseException;,
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string p1, "\"\""

    .line 149
    :cond_0
    const-string v17, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lasyx/ksoap2/transport/HttpTransportSE;->createRequestData(Lasyx/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v13

    .line 151
    .local v13, "requestData":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lasyx/ksoap2/transport/HttpTransportSE;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lasyx/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    .line 152
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lasyx/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lasyx/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lasyx/ksoap2/transport/ServiceConnection;

    move-result-object v4

    .line 156
    .local v4, "connection":Lasyx/ksoap2/transport/ServiceConnection;
    const-string v17, "User-Agent"

    const-string v18, "ksoap2-android/2.6.0+"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p2

    iget v0, v0, Lasyx/ksoap2/SoapEnvelope;->version:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 161
    const-string v17, "SOAPAction"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lasyx/ksoap2/SoapEnvelope;->version:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 165
    const-string v17, "Content-Type"

    const-string v18, "application/soap+xml;charset=utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_1
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz p3, :cond_4

    .line 177
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 178
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lasyx/ksoap2/HeaderProperty;

    .line 179
    .local v8, "hp":Lasyx/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 151
    .end local v4    # "connection":Lasyx/ksoap2/transport/ServiceConnection;
    .end local v8    # "hp":Lasyx/ksoap2/HeaderProperty;
    .end local v9    # "i":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 167
    .restart local v4    # "connection":Lasyx/ksoap2/transport/ServiceConnection;
    :cond_3
    const-string v17, "Content-Type"

    const-string v18, "text/xml;charset=utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v4, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->sendData([BLasyx/ksoap2/transport/ServiceConnection;Lasyx/ksoap2/SoapEnvelope;)V

    .line 185
    const/4 v13, 0x0

    .line 186
    const/4 v10, 0x0

    .line 187
    .local v10, "is":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 188
    .local v14, "retHeaders":Ljava/util/List;
    const/4 v3, 0x0

    .line 189
    .local v3, "buf":[B
    const/16 v5, 0x2000

    .line 190
    .local v5, "contentLength":I
    const/4 v7, 0x0

    .line 191
    .local v7, "gZippedContent":Z
    const/16 v16, 0x0

    .line 192
    .local v16, "xmlContent":Z
    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v15

    .line 195
    .local v15, "status":I
    :try_start_0
    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->getResponseProperties()Ljava/util/List;

    move-result-object v14

    .line 197
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_9

    .line 198
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lasyx/ksoap2/HeaderProperty;

    .line 200
    .restart local v8    # "hp":Lasyx/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 197
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 205
    :cond_6
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "content-length"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 206
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    if-eqz v17, :cond_7

    .line 208
    :try_start_1
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 218
    :cond_7
    :goto_5
    :try_start_2
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Content-Type"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 220
    const/16 v16, 0x1

    .line 226
    :cond_8
    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Content-Encoding"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v8}, Lasyx/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gzip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 228
    const/4 v7, 0x1

    goto :goto_4

    .line 209
    :catch_0
    move-exception v12

    .line 210
    .local v12, "nfe":Ljava/lang/NumberFormatException;
    const/16 v5, 0x2000

    goto :goto_5

    .line 233
    .end local v8    # "hp":Lasyx/ksoap2/HeaderProperty;
    .end local v12    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_c

    .line 235
    new-instance v17, Lasyx/ksoap2/transport/HttpResponseException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "HTTP request failed, HTTP status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lasyx/ksoap2/transport/HttpResponseException;-><init>(Ljava/lang/String;I)V

    throw v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 246
    .end local v9    # "i":I
    :catch_1
    move-exception v6

    .line 247
    .local v6, "e":Ljava/io/IOException;
    if-lez v5, :cond_a

    .line 248
    if-eqz v7, :cond_10

    .line 249
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v10

    .line 256
    :cond_a
    :goto_6
    instance-of v0, v6, Lasyx/ksoap2/transport/HttpResponseException;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 257
    if-nez v16, :cond_d

    .line 258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lasyx/ksoap2/transport/HttpTransportSE;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    if-eqz v10, :cond_b

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v10, v5, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;

    .line 264
    :cond_b
    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 265
    throw v6

    .line 238
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v9    # "i":I
    :cond_c
    if-lez v5, :cond_d

    .line 239
    if-eqz v7, :cond_f

    .line 240
    :try_start_3
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 270
    .end local v9    # "i":I
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lasyx/ksoap2/transport/HttpTransportSE;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v10, v5, v1}, Lasyx/ksoap2/transport/HttpTransportSE;->readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;

    move-result-object v10

    .line 274
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v14}, Lasyx/ksoap2/transport/HttpTransportSE;->parseResponse(Lasyx/ksoap2/SoapEnvelope;Ljava/io/InputStream;Ljava/util/List;)V

    .line 278
    const/4 v10, 0x0

    .line 279
    const/4 v3, 0x0

    .line 281
    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 282
    const/4 v4, 0x0

    .line 283
    return-object v14

    .line 243
    .restart local v9    # "i":I
    :cond_f
    :try_start_4
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 252
    .end local v9    # "i":I
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_10
    new-instance v10, Ljava/io/BufferedInputStream;

    .end local v10    # "is":Ljava/io/InputStream;
    invoke-interface {v4}, Lasyx/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6
.end method

.method public call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/ksoap2/transport/HttpResponseException;,
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 114
    return-void
.end method

.method public getServiceConnection()Lasyx/ksoap2/transport/ServiceConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lasyx/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lasyx/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lasyx/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    iget v3, p0, Lasyx/ksoap2/transport/HttpTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lasyx/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected parseResponse(Lasyx/ksoap2/SoapEnvelope;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0
    .param p1, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "returnedHeaders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/transport/HttpTransportSE;->parseResponse(Lasyx/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    .line 302
    return-void
.end method

.method protected sendData([BLasyx/ksoap2/transport/ServiceConnection;Lasyx/ksoap2/SoapEnvelope;)V
    .locals 4
    .param p1, "requestData"    # [B
    .param p2, "connection"    # Lasyx/ksoap2/transport/ServiceConnection;
    .param p3, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lasyx/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    array-length v1, p1

    invoke-interface {p2, v1}, Lasyx/ksoap2/transport/ServiceConnection;->setFixedLengthStreamingMode(I)V

    .line 292
    invoke-interface {p2}, Lasyx/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 293
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 294
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 295
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 296
    return-void
.end method
