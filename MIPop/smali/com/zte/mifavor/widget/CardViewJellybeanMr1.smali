.class Lcom/zte/mifavor/widget/CardViewJellybeanMr1;
.super Lcom/zte/mifavor/widget/CardViewEclairMr1;
.source "CardViewJellybeanMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/mifavor/widget/CardViewEclairMr1;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/zte/mifavor/widget/CardViewJellybeanMr1$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/CardViewJellybeanMr1$1;-><init>(Lcom/zte/mifavor/widget/CardViewJellybeanMr1;)V

    sput-object v0, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 35
    return-void
.end method
