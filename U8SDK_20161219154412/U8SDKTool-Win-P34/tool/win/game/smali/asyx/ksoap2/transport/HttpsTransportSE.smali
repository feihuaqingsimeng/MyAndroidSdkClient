.class public Lasyx/ksoap2/transport/HttpsTransportSE;
.super Lasyx/ksoap2/transport/HttpTransportSE;
.source "HttpsTransportSE.java"


# static fields
.field static final PROTOCOL:Ljava/lang/String; = "https"

.field private static final PROTOCOL_FULL:Ljava/lang/String; = "https://"


# instance fields
.field private connection:Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

.field protected final file:Ljava/lang/String;

.field protected final host:Ljava/lang/String;

.field protected final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p1, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    .line 29
    iput p2, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->port:I

    .line 30
    iput-object p3, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "timeout"    # I

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lasyx/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    .line 43
    iput p3, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->port:I

    .line 44
    iput-object p4, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    .line 45
    iput p5, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->timeout:I

    .line 46
    return-void
.end method


# virtual methods
.method public getServiceConnection()Lasyx/ksoap2/transport/ServiceConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->connection:Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->connection:Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

    iget-object v1, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    iget v3, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->port:I

    iget-object v4, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    iget v5, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->timeout:I

    invoke-direct/range {v0 .. v5}, Lasyx/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->connection:Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

    .line 58
    iget-object v0, p0, Lasyx/ksoap2/transport/HttpsTransportSE;->connection:Lasyx/ksoap2/transport/HttpsServiceConnectionSE;

    goto :goto_0
.end method
