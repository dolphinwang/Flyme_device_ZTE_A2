.class Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$1;
.super Landroid/database/ContentObserver;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->registerMonitor(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$1;->this$0:Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;

    .line 347
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$1;->this$0:Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;

    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->MMS:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    # invokes: Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->callOnChange(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->access$1(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V

    .line 352
    return-void
.end method
