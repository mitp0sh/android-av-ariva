.class Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 1248
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1249
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1265
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    .line 1266
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    return-void

    .line 1266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 1252
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1253
    return-void

    .line 1252
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    .line 1262
    return-void

    .line 1260
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 1280
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1271
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1272
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    if-eqz v0, :cond_0

    .line 1274
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(I)V

    .line 1276
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1289
    sget v0, Landroid/support/v7/appcompat/R$id;->up:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    .line 1290
    sget v0, Landroid/support/v7/appcompat/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    .line 1291
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->e:Landroid/graphics/drawable/Drawable;

    .line 1292
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1343
    sub-int v0, p5, p3

    div-int/lit8 v2, v0, 0x2

    .line 1346
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 1347
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1348
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 1349
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 1350
    div-int/lit8 v5, v3, 0x2

    sub-int v5, v2, v5

    .line 1351
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    add-int/2addr v3, v5

    invoke-virtual {v6, v1, v5, v4, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1352
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 1353
    add-int/2addr p2, v0

    move v1, v0

    .line 1356
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1357
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 1358
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 1359
    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    .line 1360
    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v5

    .line 1361
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1362
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    add-int/2addr v4, v1

    add-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1363
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1300
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1301
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1302
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    .line 1303
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    move v7, v3

    .line 1304
    :goto_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    .line 1305
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1307
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int v3, v7, v2

    .line 1308
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1314
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1316
    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 1322
    :goto_1
    :sswitch_0
    sparse-switch v5, :sswitch_data_1

    move v0, v1

    .line 1333
    :goto_2
    :sswitch_1
    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1339
    return-void

    .line 1303
    :cond_0
    iget v7, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    goto :goto_0

    .line 1318
    :sswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1329
    :sswitch_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 1316
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 1322
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method
