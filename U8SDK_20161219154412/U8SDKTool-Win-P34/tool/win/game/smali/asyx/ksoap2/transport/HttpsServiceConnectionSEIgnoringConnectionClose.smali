.class public Lasyx/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;
.super Lasyx/ksoap2/transport/HttpsServiceConnectionSE;
.source "HttpsServiceConnectionSEIgnoringConnectionClose.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lasyx/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    return-void
.end method


# virtual methods
.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "Connection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "close"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lasyx/ksoap2/transport/HttpsServiceConnectionSE;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    return-void
.end method
