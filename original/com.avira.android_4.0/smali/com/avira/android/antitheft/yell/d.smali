.class final Lcom/avira/android/antitheft/yell/d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/yell/b;


# direct methods
.method private constructor <init>(Lcom/avira/android/antitheft/yell/b;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/d;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antitheft/yell/b;B)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/yell/d;-><init>(Lcom/avira/android/antitheft/yell/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "stopPlay being called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/d;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/b;->b(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/antitheft/yell/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/e;->c()V

    .line 204
    return-void
.end method
