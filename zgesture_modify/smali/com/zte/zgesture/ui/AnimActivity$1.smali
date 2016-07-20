.class Lcom/zte/zgesture/ui/AnimActivity$1;
.super Ljava/lang/Object;
.source "AnimActivity.java"

# interfaces
.implements Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/ui/AnimActivity;->loadShape(Lcom/zte/zgesture/ui/AnimActivity$DrawType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/ui/AnimActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/ui/AnimActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zte/zgesture/ui/AnimActivity$1;->this$0:Lcom/zte/zgesture/ui/AnimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$1;->this$0:Lcom/zte/zgesture/ui/AnimActivity;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AnimActivity;->finish()V

    .line 50
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "FrameAnimation end"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
