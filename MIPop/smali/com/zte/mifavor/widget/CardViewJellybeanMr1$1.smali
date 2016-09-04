.class Lcom/zte/mifavor/widget/CardViewJellybeanMr1$1;
.super Ljava/lang/Object;
.source "CardViewJellybeanMr1.java"

# interfaces
.implements Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/CardViewJellybeanMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/CardViewJellybeanMr1;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/CardViewJellybeanMr1;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/mifavor/widget/CardViewJellybeanMr1$1;->this$0:Lcom/zte/mifavor/widget/CardViewJellybeanMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 32
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    return-void
.end method
