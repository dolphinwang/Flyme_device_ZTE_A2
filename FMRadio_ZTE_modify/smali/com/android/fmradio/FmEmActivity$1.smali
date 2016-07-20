.class Lcom/android/fmradio/FmEmActivity$1;
.super Ljava/lang/Object;
.source "FmEmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmEmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmEmActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 45
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v42

    sparse-switch v42, :sswitch_data_0

    .line 365
    const-string v42, "FmRx/EM"

    const-string v43, "invalid view id"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 186
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/fmradio/FmEmActivity;->switchAntenna(I)V

    goto :goto_0

    .line 189
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/fmradio/FmEmActivity;->switchAntenna(I)V

    goto :goto_0

    .line 192
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/fmradio/FmEmActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 195
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/fmradio/FmEmActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 198
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$0(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v38

    .line 199
    .local v38, "s":Ljava/lang/String;
    const/16 v29, 0x0

    .line 201
    .local v29, "freq":F
    :try_start_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v29

    .line 204
    invoke-static/range {v29 .. v29}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v40

    .line 205
    .local v40, "station":I
    invoke-static/range {v40 .. v40}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v42

    if-nez v42, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Please input 87.5 ~ 108.0."

    .line 207
    const/16 v44, 0x0

    .line 206
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 207
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$0(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v43, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static/range {v43 .. v43}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/android/fmradio/FmUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    .end local v40    # "station":I
    :catch_0
    move-exception v28

    .line 212
    .local v28, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "bad float format."

    .line 213
    const/16 v44, 0x0

    .line 212
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 213
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$0(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v43, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static/range {v43 .. v43}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/android/fmradio/FmUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 220
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v40    # "station":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$2(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    invoke-static/range {v29 .. v29}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v43

    # invokes: Lcom/android/fmradio/FmEmActivity;->tuneToStation(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/fmradio/FmEmActivity;->access$3(Lcom/android/fmradio/FmEmActivity;I)V

    goto/16 :goto_0

    .line 224
    .end local v29    # "freq":F
    .end local v38    # "s":Ljava/lang/String;
    .end local v40    # "station":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditRssiThreshold:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$4(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v36

    .line 225
    .local v36, "rssi":Ljava/lang/String;
    const/16 v37, 0x0

    .line 227
    .local v37, "rssi_edit":I
    :try_start_1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$5(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/FmService;->setEmth(II)Z

    move-result v32

    .line 236
    .local v32, "isRssiOk":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$5(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    if-eqz v32, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Rssi Threshold set OK."

    .line 239
    const/16 v44, 0x0

    .line 238
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 239
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 228
    .end local v32    # "isRssiOk":Z
    :catch_1
    move-exception v28

    .line 229
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    const-string v42, "FmRx/EM"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "click rssi threshold button:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "bad format."

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$0(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    const-string v43, "0"

    invoke-virtual/range {v42 .. v43}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 241
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v32    # "isRssiOk":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Rssi Threshold set fail."

    .line 242
    const/16 v44, 0x0

    .line 241
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 242
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 246
    .end local v32    # "isRssiOk":Z
    .end local v36    # "rssi":Ljava/lang/String;
    .end local v37    # "rssi_edit":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditDesenseRssi:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$7(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v26

    .line 247
    .local v26, "deRssi":Ljava/lang/String;
    const/16 v27, 0x0

    .line 249
    .local v27, "deRssi_edit":I
    :try_start_2
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v27

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$8(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/FmService;->setEmth(II)Z

    move-result v30

    .line 258
    .local v30, "isDeRssiOk":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$8(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    if-eqz v30, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Desense Rssi Threshold set OK."

    .line 261
    const/16 v44, 0x0

    .line 260
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 261
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 250
    .end local v30    # "isDeRssiOk":Z
    :catch_2
    move-exception v28

    .line 251
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    const-string v42, "FmRx/EM"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "click desense rssi button:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "bad format."

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditDesenseRssi:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$7(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    const-string v43, "0"

    invoke-virtual/range {v42 .. v43}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 263
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v30    # "isDeRssiOk":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Desense Rssi Threshold set fail."

    .line 264
    const/16 v44, 0x0

    .line 263
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 264
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 268
    .end local v26    # "deRssi":Ljava/lang/String;
    .end local v27    # "deRssi_edit":I
    .end local v30    # "isDeRssiOk":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditMuteGain:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$9(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v34

    .line 269
    .local v34, "mutegain":Ljava/lang/String;
    const/16 v35, 0x0

    .line 271
    .local v35, "mutegain_edit":I
    :try_start_3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v35

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$10(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v42

    const/16 v43, 0x2

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/FmService;->setEmth(II)Z

    move-result v31

    .line 281
    .local v31, "isMuteOk":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$10(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    if-eqz v31, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Software mute gain set OK."

    .line 284
    const/16 v44, 0x0

    .line 283
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 284
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 272
    .end local v31    # "isMuteOk":Z
    :catch_3
    move-exception v28

    .line 273
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    const-string v42, "FmRx/EM"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "click mute gain button:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "bad format."

    .line 275
    const/16 v44, 0x0

    .line 274
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 275
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditMuteGain:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$9(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    const-string v43, "0"

    invoke-virtual/range {v42 .. v43}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 286
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v31    # "isMuteOk":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "Software mute gain set fail."

    .line 287
    const/16 v44, 0x0

    .line 286
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 287
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 291
    .end local v31    # "isMuteOk":Z
    .end local v34    # "mutegain":Ljava/lang/String;
    .end local v35    # "mutegain_edit":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD0:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$11(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "cmd0":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD1:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$12(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "cmd1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD2:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$13(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    .line 294
    .local v15, "cmd2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD3:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$14(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v16

    .line 295
    .local v16, "cmd3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD4:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$15(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 296
    .local v17, "cmd4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD5:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$16(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 297
    .local v18, "cmd5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD6:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$17(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    .line 298
    .local v19, "cmd6":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD7:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$18(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v20

    .line 299
    .local v20, "cmd7":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD8:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$19(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v21

    .line 300
    .local v21, "cmd8":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD9:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$20(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v22

    .line 301
    .local v22, "cmd9":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD10:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$21(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "cmd10":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD11:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$22(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "cmd11":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD12:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$23(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "cmd12":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD13:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$24(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, "cmd13":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD14:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$25(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "cmd14":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD15:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$26(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "cmd15":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD16:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$27(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 308
    .local v11, "cmd16":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD17:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$28(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    .line 309
    .local v12, "cmd17":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD18:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$29(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, "cmd18":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mEditCMD19:Landroid/widget/EditText;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$30(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "cmd19":Ljava/lang/String;
    const/16 v42, 0x14

    move/from16 v0, v42

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .line 313
    .local v23, "cmdArray":[S
    const/16 v42, 0x14

    :try_start_4
    move/from16 v0, v42

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .end local v23    # "cmdArray":[S
    const/16 v42, 0x0

    .line 314
    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x1

    .line 315
    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x2

    .line 316
    invoke-static {v15}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x3

    .line 317
    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x4

    .line 318
    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x5

    .line 319
    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x6

    .line 320
    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x7

    .line 321
    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x8

    .line 322
    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x9

    .line 323
    invoke-static/range {v22 .. v22}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xa

    .line 324
    invoke-static {v5}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xb

    .line 325
    invoke-static {v6}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xc

    .line 326
    invoke-static {v7}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xd

    .line 327
    invoke-static {v8}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xe

    .line 328
    invoke-static {v9}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0xf

    .line 329
    invoke-static {v10}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x10

    .line 330
    invoke-static {v11}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x11

    .line 331
    invoke-static {v12}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x12

    .line 332
    invoke-static {v13}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42

    const/16 v42, 0x13

    .line 333
    invoke-static {v14}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Short;->shortValue()S

    move-result v43

    aput-short v43, v23, v42
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 339
    .restart local v23    # "cmdArray":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->emcmd([S)[S

    move-result-object v24

    .line 341
    .local v24, "cmds":[S
    if-nez v24, :cond_4

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "cmd execute fail."

    .line 343
    const/16 v44, 0x0

    .line 342
    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    .line 343
    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    .line 344
    const-string v42, "FmRx/EM"

    const-string v43, "cmd expand execute fail"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 334
    .end local v23    # "cmdArray":[S
    .end local v24    # "cmds":[S
    :catch_4
    move-exception v28

    .line 335
    .local v28, "e":Ljava/lang/Exception;
    const-string v42, "FmRx/EM"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "click cmd button:"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    const-string v43, "bad format."

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 347
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v23    # "cmdArray":[S
    .restart local v24    # "cmds":[S
    :cond_4
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v39, v0

    .line 348
    .local v39, "size":I
    const/16 v25, 0x0

    .line 349
    .local v25, "count":I
    const/16 v42, 0x5

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const-string v43, ""

    aput-object v43, v41, v42

    const/16 v42, 0x1

    const-string v43, ""

    aput-object v43, v41, v42

    const/16 v42, 0x2

    const-string v43, ""

    aput-object v43, v41, v42

    const/16 v42, 0x3

    const-string v43, ""

    aput-object v43, v41, v42

    const/16 v42, 0x4

    const-string v43, ""

    aput-object v43, v41, v42

    .line 350
    .local v41, "values":[Ljava/lang/String;
    const/16 v33, -0x1

    .line 351
    .local v33, "line":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v39

    if-lt v0, v1, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn0:Landroid/widget/TextView;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$31(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v43, v41, v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn1:Landroid/widget/TextView;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$32(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v41, v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn2:Landroid/widget/TextView;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$33(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v42

    const/16 v43, 0x2

    aget-object v43, v41, v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn3:Landroid/widget/TextView;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$34(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v42

    const/16 v43, 0x3

    aget-object v43, v41, v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmEmActivity$1;->this$0:Lcom/android/fmradio/FmEmActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn4:Landroid/widget/TextView;
    invoke-static/range {v42 .. v42}, Lcom/android/fmradio/FmEmActivity;->access$35(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v42

    const/16 v43, 0x4

    aget-object v43, v41, v43

    invoke-virtual/range {v42 .. v43}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    rem-int/lit8 v42, v25, 0x4

    if-nez v42, :cond_6

    .line 353
    add-int/lit8 v33, v33, 0x1

    .line 355
    :cond_6
    aget-object v42, v41, v33

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "0X"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    aget-short v43, v24, v25

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v41, v33

    .line 356
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x7f060075 -> :sswitch_4
        0x7f060077 -> :sswitch_0
        0x7f060078 -> :sswitch_1
        0x7f06007a -> :sswitch_2
        0x7f06007b -> :sswitch_3
        0x7f060087 -> :sswitch_5
        0x7f060089 -> :sswitch_7
        0x7f06008b -> :sswitch_6
        0x7f0600a0 -> :sswitch_8
    .end sparse-switch
.end method
