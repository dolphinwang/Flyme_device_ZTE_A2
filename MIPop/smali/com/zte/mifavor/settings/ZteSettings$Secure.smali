.class public final Lcom/zte/mifavor/settings/ZteSettings$Secure;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/settings/ZteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final FIRST_BOOT:Ljava/lang/String; = "zreq_first_boot"

.field public static final FIRST_SET_MEDIA:Ljava/lang/String; = "zreq_first_set_media"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
