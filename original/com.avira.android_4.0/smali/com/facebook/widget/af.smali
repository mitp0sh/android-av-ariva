.class public Lcom/facebook/widget/af;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/widget/am;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/af;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    .line 110
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/widget/af;->b:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/facebook/widget/af;->h:Z

    .line 83
    iput-boolean v1, p0, Lcom/facebook/widget/af;->i:Z

    .line 84
    iput-boolean v1, p0, Lcom/facebook/widget/af;->j:Z

    .line 122
    iput-object p2, p0, Lcom/facebook/widget/af;->a:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/am;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/widget/af;->b:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/facebook/widget/af;->h:Z

    .line 83
    iput-boolean v1, p0, Lcom/facebook/widget/af;->i:Z

    .line 84
    iput-boolean v1, p0, Lcom/facebook/widget/af;->j:Z

    .line 137
    if-nez p3, :cond_0

    .line 138
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 142
    :cond_0
    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "display"

    const-string v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/facebook/b/cf;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/b/cf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/af;->a:Ljava/lang/String;

    .line 151
    iput-object p5, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    .line 152
    return-void
.end method

.method private static a(IFII)I
    .locals 6

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 306
    int-to-float v2, p0

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 308
    if-gt v2, p2, :cond_1

    .line 309
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 320
    :cond_0
    :goto_0
    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 310
    :cond_1
    if-ge v2, p3, :cond_0

    .line 315
    sub-int v2, p3, v2

    int-to-double v2, v2

    sub-int v4, p3, p2

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/widget/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/widget/af;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/facebook/widget/af;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/widget/af;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/widget/af;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/af;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/af;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/af;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 261
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/b/cl;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 266
    return-object v1
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    .line 326
    iget-object v0, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/am;->a(Landroid/os/Bundle;Lcom/facebook/am;)V

    .line 328
    invoke-virtual {p0}, Lcom/facebook/widget/af;->dismiss()V

    .line 330
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/widget/am;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    .line 161
    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    .line 335
    instance-of v0, p1, Lcom/facebook/am;

    if-eqz v0, :cond_1

    .line 337
    check-cast p1, Lcom/facebook/am;

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/af;->c:Lcom/facebook/widget/am;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/am;->a(Landroid/os/Bundle;Lcom/facebook/am;)V

    .line 343
    invoke-virtual {p0}, Lcom/facebook/widget/af;->dismiss()V

    .line 345
    :cond_0
    return-void

    .line 339
    :cond_1
    new-instance v0, Lcom/facebook/am;

    invoke-direct {v0, p1}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    return v0
.end method

.method protected final b()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/widget/af;->b:Ljava/lang/String;

    .line 258
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/facebook/ao;

    invoke-direct {v0}, Lcom/facebook/ao;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/af;->a(Ljava/lang/Throwable;)V

    .line 349
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/facebook/widget/af;->j:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/af;->j:Z

    .line 183
    iget-boolean v0, p0, Lcom/facebook/widget/af;->h:Z

    if-nez v0, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/facebook/widget/af;->c()V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 190
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/widget/af;->i:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    :cond_4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/af;->i:Z

    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 214
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    .line 215
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 216
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/a/g;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/widget/af;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/widget/ag;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ag;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 224
    invoke-virtual {p0, v7}, Lcom/facebook/widget/af;->requestWindowFeature(I)Z

    .line 225
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/af;->g:Landroid/widget/FrameLayout;

    .line 228
    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    invoke-static {v0, v3, v4, v5}, Lcom/facebook/widget/af;->a(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x320

    const/16 v5, 0x500

    invoke-static {v1, v3, v4, v5}, Lcom/facebook/widget/af;->a(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 229
    invoke-virtual {p0}, Lcom/facebook/widget/af;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/widget/af;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 238
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/widget/ah;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ah;-><init>(Lcom/facebook/widget/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 245
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/facebook/widget/ai;

    invoke-virtual {p0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/ai;-><init>(Lcom/facebook/widget/af;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    new-instance v3, Lcom/facebook/widget/al;

    invoke-direct {v3, p0, v6}, Lcom/facebook/widget/al;-><init>(Lcom/facebook/widget/af;B)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/facebook/widget/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v2, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/widget/af;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/widget/af;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/facebook/widget/af;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/widget/af;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/facebook/widget/af;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/af;->setContentView(Landroid/view/View;)V

    .line 254
    return-void

    .line 228
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/af;->i:Z

    .line 201
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 202
    return-void
.end method
