.class public final Lcom/ipaynow/plugin/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final g:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tips_bg.9.png"

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/a/b;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method
