.class public Lasyx/ksoap2/transport/HttpResponseException;
.super Ljava/io/IOException;
.source "HttpResponseException.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    iput p1, p0, Lasyx/ksoap2/transport/HttpResponseException;->statusCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lasyx/ksoap2/transport/HttpResponseException;->statusCode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "statusCode"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput p3, p0, Lasyx/ksoap2/transport/HttpResponseException;->statusCode:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "statusCode"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    iput p2, p0, Lasyx/ksoap2/transport/HttpResponseException;->statusCode:I

    .line 33
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lasyx/ksoap2/transport/HttpResponseException;->statusCode:I

    return v0
.end method
