.class public interface abstract Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;
.super Ljava/lang/Object;
.source "SpotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/pressure/SpotFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PressureCallback"
.end annotation


# virtual methods
.method public abstract onPressureChanged(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
.end method

.method public abstract onStateChanged(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
.end method
