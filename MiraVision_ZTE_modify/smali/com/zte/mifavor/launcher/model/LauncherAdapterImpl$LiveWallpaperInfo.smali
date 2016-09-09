.class public Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;
.super Ljava/lang/Object;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveWallpaperInfo"
.end annotation


# instance fields
.field public info:Landroid/app/WallpaperInfo;

.field public intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;

.field public thumbnail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->this$0:Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
