.class final Lcom/avira/android/antitheft/lock/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/lock/a;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/lock/a;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/b;->a:Lcom/avira/android/antitheft/lock/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/b;->a:Lcom/avira/android/antitheft/lock/a;

    iget-object v0, v0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    return-void
.end method
