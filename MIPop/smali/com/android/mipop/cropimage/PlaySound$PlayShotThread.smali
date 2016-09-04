.class Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;
.super Ljava/lang/Thread;
.source "PlaySound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/PlaySound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayShotThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mipop/cropimage/PlaySound;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/PlaySound;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "namepath"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->this$0:Lcom/android/mipop/cropimage/PlaySound;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p3, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->name:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->this$0:Lcom/android/mipop/cropimage/PlaySound;

    iget-object v1, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/cropimage/PlaySound;->playShortDriect(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void
.end method
