.class final Lcom/avira/android/antitheft/lock/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/lock/ATLockService;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/lock/ATLockService;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/c;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/c;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->f(Lcom/avira/android/antitheft/lock/ATLockService;)Z

    .line 345
    return-void
.end method
