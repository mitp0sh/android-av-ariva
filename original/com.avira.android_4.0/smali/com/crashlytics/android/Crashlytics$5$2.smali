.class Lcom/crashlytics/android/Crashlytics$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/Crashlytics$5;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics$5;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$5$2;->this$1:Lcom/crashlytics/android/Crashlytics$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$5$2;->this$1:Lcom/crashlytics/android/Crashlytics$5;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics$5;->val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/Crashlytics$OptInLatch;->setOptIn(Z)V

    .line 1003
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1004
    return-void
.end method
