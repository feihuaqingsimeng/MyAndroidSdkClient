.class public Lasyx/ksoap2/serialization/SoapPrimitive;
.super Lasyx/ksoap2/serialization/AttributeContainer;
.source "SoapPrimitive.java"


# static fields
.field public static final NullNilElement:Ljava/lang/Object;

.field public static final NullSkip:Ljava/lang/Object;


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lasyx/ksoap2/serialization/SoapPrimitive;->NullSkip:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lasyx/ksoap2/serialization/SoapPrimitive;->NullNilElement:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0}, Lasyx/ksoap2/serialization/AttributeContainer;-><init>()V

    .line 45
    iput-object p1, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    instance-of v4, p1, Lasyx/ksoap2/serialization/SoapPrimitive;

    if-nez v4, :cond_0

    .line 58
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 54
    check-cast v0, Lasyx/ksoap2/serialization/SoapPrimitive;

    .line 55
    .local v0, "p":Lasyx/ksoap2/serialization/SoapPrimitive;
    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    iget-object v5, v0, Lasyx/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, v0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    if-nez v4, :cond_4

    iget-object v4, v0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    if-nez v4, :cond_3

    :goto_1
    move v1, v2

    .line 58
    .local v1, "varsEqual":Z
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lasyx/ksoap2/serialization/SoapPrimitive;->attributesAreEqual(Lasyx/ksoap2/serialization/AttributeContainer;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    move v3, v2

    goto :goto_0

    .line 55
    .end local v1    # "varsEqual":Z
    :cond_2
    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    iget-object v5, v0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    iget-object v5, v0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .restart local v1    # "varsEqual":Z
    :cond_5
    move v2, v3

    .line 58
    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
