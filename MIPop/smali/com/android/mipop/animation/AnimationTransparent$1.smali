.class final Lcom/android/mipop/animation/AnimationTransparent$1;
.super Ljava/lang/Object;
.source "AnimationTransparent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/animation/AnimationTransparent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 50
    # invokes: Lcom/android/mipop/animation/AnimationTransparent;->transparenting()V
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->access$000()V

    .line 51
    return-void
.end method
