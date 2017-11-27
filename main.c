#include <security/pam_appl.h>
#include <security/pam_misc.h>
#include <security/pam_modules.h>
#include <stdio.h>

PAM_EXTERN int pam_sm_open_session(pam_handle_t *pamh, int flags, int argc, const char **argv){
  printf("Lel\n");
  return (PAM_SUCCESS);
}

PAM_EXTERN int pam_sm_close_session(pam_handle_t *pamh, int flags, int argc, const char **argv){
	printf("Lal\n");
  return (PAM_SUCCESS);
}
