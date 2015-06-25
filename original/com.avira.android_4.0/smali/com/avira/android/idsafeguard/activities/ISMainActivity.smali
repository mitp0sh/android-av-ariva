.class public Lcom/avira/android/idsafeguard/activities/ISMainActivity;
.super Lcom/avira/android/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/idsafeguard/b/f;
.implements Lcom/avira/applock/common/b/b;


# static fields
.field private static final MENU_ACTION_ABOUT:I = 0x1

.field private static final MENU_ACTION_BREACHED_COMPANIES:I


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:[Ljava/lang/String;

.field private l:Lcom/avira/android/idsafeguard/c/d;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f0e015c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0e015d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0802d7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 180
    const v0, 0x7f0802da

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 172
    :pswitch_0
    const v0, 0x7f0802d8

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_1
    const v0, 0x7f0802d9

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0802de

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    packed-switch p2, :pswitch_data_1

    .line 219
    const v0, 0x7f0802e0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void

    .line 209
    :pswitch_0
    const v0, 0x7f0802dd

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_1
    const v0, 0x7f0802df

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/avira/android/idsafeguard/services/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    sget-object v0, Lcom/avira/android/idsafeguard/services/a;->ERROR:Lcom/avira/android/idsafeguard/services/a;

    if-ne p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/idsafeguard/services/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 267
    sget-object v0, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0802e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(I)V

    .line 280
    invoke-virtual {p0, v2, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(II)V

    .line 290
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0802d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->m:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 241
    if-lez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->d()V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->e()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 254
    if-lez p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 321
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->a()V

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->b()V

    goto :goto_0

    .line 327
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->c()V

    goto :goto_0

    .line 330
    :sswitch_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 331
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 332
    const/4 v1, 0x1

    aget v0, v0, v1

    new-instance v1, Lcom/avira/applock/common/b/a;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->k:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/avira/applock/common/b/a;-><init>(Lcom/avira/applock/common/b/b;[Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "PopupMenu"

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/common/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0123 -> :sswitch_3
        0x7f0e013f -> :sswitch_1
        0x7f0e0140 -> :sswitch_2
        0x7f0e0143 -> :sswitch_0
    .end sparse-switch

    .line 330
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e015e

    const v3, 0x7f0e015d

    .line 57
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0802f6

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0802f7

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->k:[Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030061

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030062

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030057

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030060

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->setContentView(I)V

    new-instance v0, Lcom/avira/android/idsafeguard/c/d;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/c/d;-><init>(Lcom/avira/android/idsafeguard/b/f;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    const v0, 0x7f0e0143

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0142

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0802d6

    invoke-virtual {p0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802d8

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0140

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    const v1, 0x7f0802dc

    invoke-virtual {p0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08018c

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/c/d;->a(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->g()V

    .line 144
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onPause()V

    .line 145
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onPostResume()V

    .line 131
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "sent_email_to_breached_contact"

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080371

    invoke-virtual {p0, v1}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    .line 136
    invoke-static {v2}, Lcom/avira/android/common/a/b;->b(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;->l:Lcom/avira/android/idsafeguard/c/d;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/d;->f()V

    .line 124
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onResume()V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
