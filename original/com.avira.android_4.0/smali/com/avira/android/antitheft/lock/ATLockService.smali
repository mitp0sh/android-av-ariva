.class public Lcom/avira/android/antitheft/lock/ATLockService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CALL_PREFIX:Ljava/lang/String; = "tel:"

.field private static final DELAY_PERIOD:J = 0x1f4L

.field static final LOCK_ACTION:Ljava/lang/String; = "com.avira.android.action.LOCK"

.field private static final MAX_PIN_LENGTH:I = 0x4

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final PACKAGE_NAME_NATIVE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PIN_MASK_CHAR:C = '\u25cf'

.field private static final SERVICE_PERMISSION:Ljava/lang/String; = "com.avira.android.permission.REMOTE_LOCK_SERVICE"

.field private static final STATE_OFFHOOK:I = 0x3

.field private static final STATE_PIN:I = 0x0

.field private static final STATE_PIN_LOCKED:I = 0x2

.field private static final STATE_RINGING:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field static final UNLOCK_ACTION:Ljava/lang/String; = "com.avira.android.action.UNLOCK"

.field public static final UPDATE_LOCKSCREEN_INFO_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_UPDATE_LOCKSCREEN_INFO"


# instance fields
.field private final A:Ljava/lang/Thread;

.field private final B:Landroid/telephony/PhoneStateListener;

.field private a:Ljava/lang/StringBuilder;

.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/view/WindowManager;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/view/View;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Lcom/android/internal/telephony/ITelephony;

.field private k:I

.field private l:Ljava/lang/StringBuilder;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:I

.field private volatile v:Z

.field private w:Ljava/lang/String;

.field private x:Lcom/avira/android/antitheft/lock/e;

.field private volatile y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->u:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->y:Z

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/antitheft/lock/a;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/lock/a;-><init>(Lcom/avira/android/antitheft/lock/ATLockService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->A:Ljava/lang/Thread;

    .line 455
    new-instance v0, Lcom/avira/android/antitheft/lock/d;

    invoke-direct {v0, p0}, Lcom/avira/android/antitheft/lock/d;-><init>(Lcom/avira/android/antitheft/lock/ATLockService;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->B:Landroid/telephony/PhoneStateListener;

    .line 516
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antitheft/lock/ATLockService;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->k:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/lock/ATLockService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 296
    :goto_0
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->u:I

    if-ne v0, p1, :cond_1

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 301
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 303
    const/4 p1, 0x2

    goto :goto_0

    .line 304
    :cond_2
    iput p1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->u:I

    .line 307
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 335
    :pswitch_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 337
    iput-boolean v4, p0, Lcom/avira/android/antitheft/lock/ATLockService;->y:Z

    .line 338
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->z:Landroid/os/Handler;

    new-instance v1, Lcom/avira/android/antitheft/lock/c;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/lock/c;-><init>(Lcom/avira/android/antitheft/lock/ATLockService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/avira/android/antitheft/lock/ATLockService;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e017a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0170

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0173

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0175

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->a:Ljava/lang/StringBuilder;

    .line 279
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x25cf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avira/android/antitheft/lock/ATLockService;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/lock/ATLockService;->a(I)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 395
    iput-boolean v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    .line 397
    const-string v0, "settingRemoteLock"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->B:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 404
    new-instance v0, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;

    const-string v1, "unlock"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "statusCode"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 409
    invoke-virtual {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->stopSelf()V

    .line 410
    return-void
.end method

.method static synthetic c(Lcom/avira/android/antitheft/lock/ATLockService;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->b:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->j:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getITelephony"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 485
    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->i:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->j:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 508
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->j:Lcom/android/internal/telephony/ITelephony;

    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 489
    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 491
    :catch_1
    move-exception v0

    .line 493
    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    :catch_2
    move-exception v0

    .line 497
    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    :catch_3
    move-exception v0

    .line 501
    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    :catch_4
    move-exception v0

    .line 505
    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/avira/android/antitheft/lock/ATLockService;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->y:Z

    return v0
.end method

.method static synthetic e(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 514
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic f(Lcom/avira/android/antitheft/lock/ATLockService;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->y:Z

    return v0
.end method

.method static synthetic g(Lcom/avira/android/antitheft/lock/ATLockService;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->k:I

    return v0
.end method

.method static synthetic h(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/avira/android/antitheft/lock/ATLockService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->e()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 646
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/avira/android/common/a/b;->d(Z)V

    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->c()V

    .line 602
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :cond_2
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    :try_start_0
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    rsub-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    const v1, 0x7f0802fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    if-lt v0, v7, :cond_3

    invoke-direct {p0, v6}, Lcom/avira/android/antitheft/lock/ATLockService;->a(I)V

    :cond_3
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->o:Landroid/widget/TextView;

    const v2, 0x7f0802f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/antitheft/lock/ATLockService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 608
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 612
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 615
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 618
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 621
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 624
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 627
    :pswitch_8
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 630
    :pswitch_9
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 633
    :pswitch_a
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 636
    :pswitch_b
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 639
    :pswitch_c
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(I)V

    goto/16 :goto_0

    .line 642
    :pswitch_d
    :try_start_2
    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->d()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 645
    :pswitch_e
    :try_start_3
    iget v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->k:I

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10010000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->c:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->c:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->p:Landroid/widget/TextView;

    const v1, 0x7f0802fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/avira/android/antitheft/lock/ATLockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e016a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    const-string v0, "com.avira.android.permission.REMOTE_LOCK_SERVICE"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial: starting LockService requires com.avira.android.permission.REMOTE_LOCK_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 155
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->b:Landroid/app/ActivityManager;

    .line 156
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->c:Landroid/content/pm/PackageManager;

    .line 157
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->e:Landroid/view/WindowManager;

    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->g:Landroid/view/LayoutInflater;

    .line 159
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->i:Landroid/telephony/TelephonyManager;

    .line 161
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f030074

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    .line 162
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e017c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->t:Landroid/view/ViewGroup;

    .line 163
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e017e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->p:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e017b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->n:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0169

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->s:Landroid/view/ViewGroup;

    .line 166
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0168

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->q:Landroid/widget/TextView;

    .line 167
    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->b()V

    .line 168
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0177

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    .line 169
    if-eqz v2, :cond_2

    .line 171
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f0e017d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const v4, 0xb0580

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->f:Landroid/view/WindowManager$LayoutParams;

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1905

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->l:Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {p0, v6}, Lcom/avira/android/antitheft/lock/ATLockService;->a(I)V

    .line 192
    iput-boolean v6, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    .line 193
    new-instance v0, Lcom/avira/android/antitheft/lock/e;

    invoke-direct {v0, p0, v6}, Lcom/avira/android/antitheft/lock/e;-><init>(Lcom/avira/android/antitheft/lock/ATLockService;B)V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->x:Lcom/avira/android/antitheft/lock/e;

    .line 194
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->x:Lcom/avira/android/antitheft/lock/e;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.avira.android.ACTION_UPDATE_LOCKSCREEN_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "lockPhoneNumber"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->w:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->e()V

    .line 198
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "lockMessage"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->z:Landroid/os/Handler;

    .line 201
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->h:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->x:Lcom/avira/android/antitheft/lock/e;

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 209
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->stopSelf()V

    .line 219
    const/4 v0, 0x2

    .line 236
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "com.avira.android.action.LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    if-nez v1, :cond_3

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    const-string v0, "settingRemoteLock"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/avira/android/antitheft/lock/ATLockService;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/avira/android/antitheft/lock/ATLockService;->B:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->r:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->a(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antitheft/activities/ATRemoteLockClearTaskActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    :cond_2
    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :cond_3
    const-string v1, "com.avira.android.action.UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/avira/android/antitheft/lock/ATLockService;->v:Z

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/avira/android/antitheft/lock/ATLockService;->stopSelf()V

    goto :goto_1
.end method
