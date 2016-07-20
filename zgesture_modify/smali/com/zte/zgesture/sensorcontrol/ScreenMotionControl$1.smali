.class Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMotionControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "event":Landroid/view/MotionEvent;
    :try_start_0
    const-string v9, "motion"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/view/MotionEvent;

    invoke-static {v9}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    const/4 v4, 0x0

    .line 34
    .local v4, "priority":I
    const/4 v7, 0x0

    .line 35
    .local v7, "recognizerPriority":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    const/4 v6, 0x0

    .line 36
    .local v6, "recognizerDemo":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    const/4 v3, 0x0

    .line 37
    .local v3, "isDemo":Z
    iget-object v9, p0, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->mMotionRecognizerList:Ljava/util/Set;
    invoke-static {v9}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->access$000(Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;

    .line 39
    .local v5, "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    invoke-virtual {v5, v1}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->handleMotion(Landroid/view/MotionEvent;)I

    move-result v8

    .line 41
    .local v8, "res":I
    invoke-virtual {v5}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->isInDemo()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 42
    if-ne v8, v10, :cond_1

    .line 43
    move-object v6, v5

    .line 45
    :cond_1
    const/4 v3, 0x1

    .line 57
    .end local v5    # "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .end local v8    # "res":I
    :cond_2
    if-eqz v6, :cond_6

    .line 58
    invoke-virtual {v6}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->doRecoginzer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isDemo":Z
    .end local v4    # "priority":I
    .end local v6    # "recognizerDemo":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .end local v7    # "recognizerPriority":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 72
    :cond_4
    :goto_2
    return-void

    .line 48
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isDemo":Z
    .restart local v4    # "priority":I
    .restart local v5    # "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .restart local v6    # "recognizerDemo":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .restart local v7    # "recognizerPriority":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .restart local v8    # "res":I
    :cond_5
    if-ne v8, v10, :cond_0

    .line 49
    :try_start_1
    invoke-virtual {v5}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->getPriority()I

    move-result v9

    if-lt v9, v4, :cond_0

    .line 50
    move-object v7, v5

    .line 51
    invoke-virtual {v5}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->getPriority()I

    move-result v4

    goto :goto_0

    .line 59
    .end local v5    # "recognizer":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .end local v8    # "res":I
    :cond_6
    if-nez v3, :cond_3

    if-eqz v7, :cond_3

    .line 61
    invoke-virtual {v7}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;->doRecoginzer()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 64
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isDemo":Z
    .end local v4    # "priority":I
    .end local v6    # "recognizerDemo":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    .end local v7    # "recognizerPriority":Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v9, "ScreenMotionControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RuntimeException e "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 68
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_7

    .line 69
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    throw v9
.end method
