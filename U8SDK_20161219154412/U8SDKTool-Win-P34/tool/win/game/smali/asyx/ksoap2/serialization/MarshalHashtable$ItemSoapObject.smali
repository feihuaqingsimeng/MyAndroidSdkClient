.class Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
.super Lasyx/ksoap2/serialization/SoapObject;
.source "MarshalHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasyx/ksoap2/serialization/MarshalHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemSoapObject"
.end annotation


# instance fields
.field h:Ljava/util/Hashtable;

.field resolvedIndex:I

.field private final this$0:Lasyx/ksoap2/serialization/MarshalHashtable;


# direct methods
.method constructor <init>(Lasyx/ksoap2/serialization/MarshalHashtable;Ljava/util/Hashtable;)V
    .locals 2
    .param p2, "h"    # Ljava/util/Hashtable;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v1, v1}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->this$0:Lasyx/ksoap2/serialization/MarshalHashtable;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    .line 93
    iput-object p2, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    .line 94
    const-string v0, "key"

    invoke-virtual {p0, v0, v1}, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    .line 95
    const-string v0, "value"

    invoke-virtual {p0, v0, v1}, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    .line 96
    return-void
.end method


# virtual methods
.method public setProperty(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget v1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 101
    invoke-super {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 102
    iput p1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "resolved":Ljava/lang/Object;
    :goto_1
    if-nez p1, :cond_2

    .line 107
    iget-object v1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v0    # "resolved":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 109
    .restart local v0    # "resolved":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
