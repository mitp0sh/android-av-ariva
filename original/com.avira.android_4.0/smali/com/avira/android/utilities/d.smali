.class public final Lcom/avira/android/utilities/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/TextView;Lcom/avira/android/utilities/f;I)V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/avira/android/utilities/e;->$SwitchMap$com$avira$android$utilities$CustomViewUtils$FontType:[I

    invoke-virtual {p2}, Lcom/avira/android/utilities/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const v0, 0x7f08008c

    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    return-void

    .line 31
    :pswitch_0
    const v0, 0x7f08008b

    .line 32
    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
