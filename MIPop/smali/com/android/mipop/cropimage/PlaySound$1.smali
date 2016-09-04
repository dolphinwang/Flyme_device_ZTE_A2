.class Lcom/android/mipop/cropimage/PlaySound$1;
.super Ljava/lang/Object;
.source "PlaySound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/PlaySound;->playShortDriect(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/PlaySound;

.field final synthetic val$sourceid:I


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/PlaySound;I)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/mipop/cropimage/PlaySound$1;->this$0:Lcom/android/mipop/cropimage/PlaySound;

    iput p2, p0, Lcom/android/mipop/cropimage/PlaySound$1;->val$sourceid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "arg0"    # Landroid/media/SoundPool;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    const-string v0, "HouJiong"

    const-string v1, "onLoadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v1, p0, Lcom/android/mipop/cropimage/PlaySound$1;->val$sourceid:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 54
    return-void
.end method
