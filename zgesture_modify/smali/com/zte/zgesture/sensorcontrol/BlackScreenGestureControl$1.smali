.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;
.super Ljava/lang/Object;
.source "BlackScreenGestureControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-static {p2}, Lcom/android/systemui/mifavor/IKeyguardUnlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    move-result-object v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$002(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Lcom/android/systemui/mifavor/IKeyguardUnlockService;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    .line 101
    const-string v0, "BlackScreenGestureControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected mUnLockService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$002(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Lcom/android/systemui/mifavor/IKeyguardUnlockService;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    .line 107
    const-string v0, "BlackScreenGestureControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected mUnLockService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
