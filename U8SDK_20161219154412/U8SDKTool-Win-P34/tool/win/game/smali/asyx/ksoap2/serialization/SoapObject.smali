.class public Lasyx/ksoap2/serialization/SoapObject;
.super Lasyx/ksoap2/serialization/AttributeContainer;
.source "SoapObject.java"

# interfaces
.implements Lasyx/ksoap2/serialization/KvmSerializable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected properties:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lasyx/ksoap2/serialization/AttributeContainer;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    .line 78
    iput-object p1, p0, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 305
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 391
    if-eqz p1, :cond_1

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 398
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 392
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addProperty(Lasyx/ksoap2/serialization/PropertyInfo;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 560
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 561
    return-object p0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 513
    new-instance v0, Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-direct {v0}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 514
    .local v0, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    iput-object p1, v0, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 515
    if-nez p2, :cond_0

    sget-object v1, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 517
    iput-object p2, v0, Lasyx/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 518
    invoke-virtual {p0, v0}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Lasyx/ksoap2/serialization/PropertyInfo;)Lasyx/ksoap2/serialization/SoapObject;

    move-result-object v1

    return-object v1

    .line 515
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addPropertyIfValue(Lasyx/ksoap2/serialization/PropertyInfo;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 571
    iget-object v0, p1, Lasyx/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 575
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lasyx/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 544
    if-eqz p2, :cond_0

    .line 545
    invoke-virtual {p1, p2}, Lasyx/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Lasyx/ksoap2/serialization/PropertyInfo;)Lasyx/ksoap2/serialization/SoapObject;

    move-result-object p0

    .line 548
    .end local p0    # "this":Lasyx/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 529
    if-eqz p2, :cond_0

    .line 530
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    move-result-object p0

    .line 532
    .end local p0    # "this":Lasyx/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addSoapObject(Lasyx/ksoap2/serialization/SoapObject;)Lasyx/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "soapObject"    # Lasyx/ksoap2/serialization/SoapObject;

    .prologue
    .line 587
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 588
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 83
    instance-of v5, p1, Lasyx/ksoap2/serialization/SoapObject;

    if-nez v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 87
    check-cast v1, Lasyx/ksoap2/serialization/SoapObject;

    .line 89
    .local v1, "otherSoapObject":Lasyx/ksoap2/serialization/SoapObject;
    iget-object v5, p0, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    iget-object v6, v1, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 95
    .local v0, "numProperties":I
    iget-object v5, v1, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 100
    const/4 v2, 0x0

    .local v2, "propIndex":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 101
    iget-object v5, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "thisProp":Ljava/lang/Object;
    invoke-virtual {v1, v3, v2}, Lasyx/ksoap2/serialization/SoapObject;->isPropertyEqual(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v3    # "thisProp":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->attributesAreEqual(Lasyx/ksoap2/serialization/AttributeContainer;)Z

    move-result v4

    goto :goto_0
.end method

.method public getInnerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 303
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 304
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 305
    .local v1, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "asyx.ksoap2.serialization.SoapObject"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 312
    :goto_1
    return-object v2

    .line 305
    :cond_0
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    goto :goto_0

    .line 308
    :cond_1
    new-instance v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 309
    .restart local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 310
    const-string v2, ""

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v1, p1}, Lasyx/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 309
    :cond_2
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_2

    .line 315
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 329
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 330
    .local v1, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "asyx.ksoap2.serialization.SoapObject"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    :goto_1
    return-object v2

    .line 330
    :cond_0
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    goto :goto_0

    .line 333
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 336
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 350
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 351
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 352
    .local v1, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "asyx.ksoap2.serialization.SoapObject"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 353
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :goto_1
    return-object v2

    .line 352
    .restart local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_0
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    goto :goto_0

    .line 355
    :cond_1
    new-instance v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 356
    .restart local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 357
    const-string v2, ""

    invoke-virtual {v1, v2}, Lasyx/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v1, p1}, Lasyx/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 356
    :cond_2
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_2

    .line 362
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_3
    new-instance v2, Lasyx/ksoap2/serialization/NullSoapObject;

    invoke-direct {v2}, Lasyx/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_1
.end method

.method public getPrimitivePropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 376
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 377
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 378
    .local v1, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "asyx.ksoap2.serialization.SoapObject"

    invoke-static {v2}, Lasyx/ksoap2/serialization/SoapObject;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :goto_1
    return-object v2

    .line 378
    .restart local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_0
    sget-object v2, Lasyx/ksoap2/serialization/SoapObject;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    goto :goto_0

    .line 381
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 384
    .end local v1    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lasyx/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .restart local v0    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 176
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 164
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 165
    .local v0, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 192
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(ILasyx/ksoap2/serialization/PropertyInfo;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 436
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, "element":Ljava/lang/Object;
    instance-of v2, v0, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 438
    check-cast v1, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 439
    .local v1, "p":Lasyx/ksoap2/serialization/PropertyInfo;
    iget-object v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iput-object v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 440
    iget-object v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iput-object v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 441
    iget v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->flags:I

    iput v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->flags:I

    .line 442
    iget-object v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 443
    iget-object v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->elementType:Lasyx/ksoap2/serialization/PropertyInfo;

    iput-object v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->elementType:Lasyx/ksoap2/serialization/PropertyInfo;

    .line 444
    iget-object v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iput-object v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 445
    iget-boolean v2, v1, Lasyx/ksoap2/serialization/PropertyInfo;->multiRef:Z

    iput-boolean v2, p2, Lasyx/ksoap2/serialization/PropertyInfo;->multiRef:Z

    .line 456
    .end local v1    # "p":Lasyx/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-void

    .line 448
    :cond_0
    iput-object v3, p2, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 449
    iput-object v3, p2, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 450
    iput v4, p2, Lasyx/ksoap2/serialization/PropertyInfo;->flags:I

    .line 451
    iput-object v3, p2, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 452
    iput-object v3, p2, Lasyx/ksoap2/serialization/PropertyInfo;->elementType:Lasyx/ksoap2/serialization/PropertyInfo;

    .line 453
    iput-object v0, p2, Lasyx/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 454
    iput-boolean v4, p2, Lasyx/ksoap2/serialization/PropertyInfo;->multiRef:Z

    goto :goto_0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lasyx/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 423
    invoke-virtual {p0, p1, p3}, Lasyx/ksoap2/serialization/SoapObject;->getPropertyInfo(ILasyx/ksoap2/serialization/PropertyInfo;)V

    .line 424
    return-void
.end method

.method public getPropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lasyx/ksoap2/serialization/NullSoapObject;

    invoke-direct {v1}, Lasyx/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 258
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    .line 261
    .end local p2    # "defaultThing":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 234
    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "foo":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 237
    const-string v2, ""

    .line 242
    .end local v0    # "foo":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 239
    .restart local v0    # "foo":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 242
    .end local v0    # "foo":Ljava/lang/Object;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 279
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, "property":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .end local v1    # "property":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 284
    .restart local v1    # "property":Ljava/lang/Object;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 287
    .end local v1    # "property":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 290
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lasyx/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyEqual(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "otherProp"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Lasyx/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v6

    if-lt p2, v6, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v5

    .line 121
    :cond_1
    iget-object v6, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v6, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "thisProp":Ljava/lang/Object;
    instance-of v6, p1, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    instance-of v6, v2, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 125
    check-cast v0, Lasyx/ksoap2/serialization/PropertyInfo;

    .local v0, "otherPropInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    move-object v3, v2

    .line 126
    check-cast v3, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 127
    .local v3, "thisPropInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lasyx/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lasyx/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "otherPropInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    .end local v3    # "thisPropInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_2
    instance-of v6, p1, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    instance-of v6, v2, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 130
    check-cast v1, Lasyx/ksoap2/serialization/SoapObject;

    .local v1, "otherPropSoap":Lasyx/ksoap2/serialization/SoapObject;
    move-object v4, v2

    .line 131
    check-cast v4, Lasyx/ksoap2/serialization/SoapObject;

    .line 132
    .local v4, "thisPropSoap":Lasyx/ksoap2/serialization/SoapObject;
    invoke-virtual {v1, v4}, Lasyx/ksoap2/serialization/SoapObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public newInstance()Lasyx/ksoap2/serialization/SoapObject;
    .locals 10

    .prologue
    .line 466
    new-instance v3, Lasyx/ksoap2/serialization/SoapObject;

    iget-object v8, p0, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v9, p0, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v3, "o":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v5, 0x0

    .local v5, "propIndex":I
    :goto_0
    iget-object v8, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 468
    iget-object v8, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 469
    .local v4, "prop":Ljava/lang/Object;
    instance-of v8, v4, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v8, :cond_1

    .line 470
    iget-object v8, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 471
    .local v6, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v6}, Lasyx/ksoap2/serialization/PropertyInfo;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lasyx/ksoap2/serialization/PropertyInfo;

    .line 472
    .local v7, "propertyInfoClonned":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v3, v7}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Lasyx/ksoap2/serialization/PropertyInfo;)Lasyx/ksoap2/serialization/SoapObject;

    .line 467
    .end local v4    # "prop":Ljava/lang/Object;
    .end local v6    # "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    .end local v7    # "propertyInfoClonned":Lasyx/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 473
    .restart local v4    # "prop":Ljava/lang/Object;
    :cond_1
    instance-of v8, v4, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v8, :cond_0

    .line 474
    check-cast v4, Lasyx/ksoap2/serialization/SoapObject;

    .end local v4    # "prop":Ljava/lang/Object;
    invoke-virtual {v4}, Lasyx/ksoap2/serialization/SoapObject;->newInstance()Lasyx/ksoap2/serialization/SoapObject;

    move-result-object v8

    invoke-virtual {v3, v8}, Lasyx/ksoap2/serialization/SoapObject;->addSoapObject(Lasyx/ksoap2/serialization/SoapObject;)Lasyx/ksoap2/serialization/SoapObject;

    goto :goto_1

    .line 477
    :cond_2
    const/4 v0, 0x0

    .local v0, "attribIndex":I
    :goto_2
    invoke-virtual {p0}, Lasyx/ksoap2/serialization/SoapObject;->getAttributeCount()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 478
    new-instance v2, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v2}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 479
    .local v2, "newAI":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-virtual {p0, v0, v2}, Lasyx/ksoap2/serialization/SoapObject;->getAttributeInfo(ILasyx/ksoap2/serialization/AttributeInfo;)V

    .line 480
    move-object v1, v2

    .line 482
    .local v1, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v1}, Lasyx/ksoap2/serialization/SoapObject;->addAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 484
    .end local v1    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    .end local v2    # "newAI":Lasyx/ksoap2/serialization/AttributeInfo;
    :cond_3
    return-object v3
.end method

.method public setInnerText(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 617
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 496
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    .line 498
    check-cast v0, Lasyx/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lasyx/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 501
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lasyx/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 599
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 600
    .local v2, "prop":Ljava/lang/Object;
    instance-of v3, v2, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v3, :cond_0

    .line 601
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    check-cast v2, Lasyx/ksoap2/serialization/PropertyInfo;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lasyx/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lasyx/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .restart local v2    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v2, Lasyx/ksoap2/serialization/SoapObject;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lasyx/ksoap2/serialization/SoapObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 610
    :cond_1
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
