if status is-interactive
    # Commands to run in interactive sessions can go here

	function fish_prompt
		string join '' (set_color -o)(set_color "#8bb8e9")(whoami)(set_color "#ffffff")'@'(set_color "#8bb8e9")$hostname (set_color "#e1b4ce")' ['(prompt_pwd --full-length-dirs=-1) ']' (set_color normal)(set_color "#e1b4ce")\n' ╰─> '
	end

	set -g fish_greeting

end
