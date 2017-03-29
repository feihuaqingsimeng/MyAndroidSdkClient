.class public Lasyx/ksoap2/transport/KeepAliveHttpTransportSE;
.super Lasyx/ksoap2/transport/HttpTransportSE;
.source "KeepAliveHttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentLength"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "contentLength"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 95
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "headers":Ljava/util/List;
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .restart local p3    # "headers":Ljava/util/List;
    :cond_0
    const-string v1, "Connection"

    invoke-virtual {p0, p3, v1}, Lasyx/ksoap2/transport/KeepAliveHttpTransportSE;->getHeader(Ljava/util/List;Ljava/lang/String;)Lasyx/ksoap2/HeaderProperty;

    move-result-object v0

    .line 120
    .local v0, "ref":Lasyx/ksoap2/HeaderProperty;
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lasyx/ksoap2/HeaderProperty;

    .end local v0    # "ref":Lasyx/ksoap2/HeaderProperty;
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-direct {v0, v1, v2}, Lasyx/ksoap2/HeaderProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .restart local v0    # "ref":Lasyx/ksoap2/HeaderProperty;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lasyx/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 124
    :cond_1
    const-string v1, "keep-alive"

    invoke-virtual {v0, v1}, Lasyx/ksoap2/HeaderProperty;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getHeader(Ljava/util/List;Ljava/lang/String;)Lasyx/ksoap2/HeaderProperty;
    .locals 4
    .param p1, "lista"    # Ljava/util/List;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "res":Lasyx/ksoap2/HeaderProperty;
    if-eqz p1, :cond_0

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/HeaderProperty;

    .line 137
    .local v0, "hp":Lasyx/ksoap2/HeaderProperty;
    invoke-virtual {v0}, Lasyx/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    move-object v2, v0

    .line 144
    .end local v0    # "hp":Lasyx/ksoap2/HeaderProperty;
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 135
    .restart local v0    # "hp":Lasyx/ksoap2/HeaderProperty;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
