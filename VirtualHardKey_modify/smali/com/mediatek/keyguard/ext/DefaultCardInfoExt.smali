.class public Lcom/mediatek/keyguard/ext/DefaultCardInfoExt;
.super Ljava/lang/Object;
.source "DefaultCardInfoExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ICardInfoExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.ICardInfoExt"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultKeyguardUtilExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOptrNameBySlot(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "slot"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "optrname"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method
